import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nytimestest/core/constants/api_constant.dart';
import 'package:nytimestest/core/constants/exception.dart';
import 'package:nytimestest/features/new_york_times/data/data_source/get_news_remote_data_source.dart';
import 'package:nytimestest/features/new_york_times/data/models/news_model.dart';

import '../../helpers/json_reader.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockDio mockHttpClient;
  late NewsRemoteDataSourceImpl dataSource;

  setUp(() {
    mockHttpClient = MockDio();
    dataSource = NewsRemoteDataSourceImpl(dio: mockHttpClient);
  });

  group('get current news', () {
    final tNewsModel = NewsModel.fromJson(
        json.decode(readJson('helpers/dummy_data/dummy_news_response.json')));

    test(
      'should return news model when the response code is 200',
      () async {
        // arrange
        when(
          mockHttpClient.get("${MyUrls.mostPopular}home.json",
              queryParameters: {"api-key": Variables.apiKey}),
        ).thenAnswer(
          (_) async => dio.Response(
              requestOptions: dio.RequestOptions(
                  path: "${MyUrls.mostPopular}home.json",
                  queryParameters: {"api-key": Variables.apiKey}),
              statusCode: 200,
              data: readJson('helpers/dummy_data/dummy_news_response.json')),
        );

        // act
        final result = await dataSource.getNews("home");

        // assert
        expect(result, equals(tNewsModel));
      },
    );
    test(
      'should throw network connection error when dio connection time out',
      () async {
        // arrange
        when(
          mockHttpClient.get("${MyUrls.mostPopular}home.json",
              queryParameters: {"api-key": Variables.apiKey}),
        ).thenThrow(
          dio.DioError(
              requestOptions: dio.RequestOptions(
                  path: "${MyUrls.mostPopular}home.json",
                  queryParameters: {"api-key": Variables.apiKey}),
              type: dio.DioErrorType.connectTimeout),
        );

        // act
        final call = dataSource.getNews("home");

        // assert
        expect(() => call, throwsA(isA<ConnectionException>()));
      },
    );
    test(
      'should throw network connection error when dio connection time out',
      () async {
        // arrange
        when(
          mockHttpClient.get("${MyUrls.mostPopular}home.json",
              queryParameters: {"api-key": Variables.apiKey}),
        ).thenThrow(
          dio.DioError(
              requestOptions: dio.RequestOptions(
                  path: "${MyUrls.mostPopular}home.json",
                  queryParameters: {"api-key": Variables.apiKey}),
              type: dio.DioErrorType.receiveTimeout),
        );

        // act
        final call = dataSource.getNews("home");

        // assert

        expect(() => call, throwsA(isA<ConnectionException>()));
      },
    );
    test(
      'should throw dio error when dio fail',
      () async {
        // arrange
        when(
          mockHttpClient.get("${MyUrls.mostPopular}home.json",
              queryParameters: {"api-key": Variables.apiKey}),
        ).thenThrow(
          dio.DioError(
              requestOptions: dio.RequestOptions(
                  path: "${MyUrls.mostPopular}home.json",
                  queryParameters: {"api-key": Variables.apiKey}),
              type: dio.DioErrorType.other),
        );

        // act
        final call = dataSource.getNews("home");

        // assert

        expect(() => call, throwsA(isA<ServerException>()));
      },
    );

    test(
      'should throw a server exception when the response code is 404 or other',
      () async {
        // arrange
        when(
          mockHttpClient.get("${MyUrls.mostPopular}home.json",
              queryParameters: {"api-key": Variables.apiKey}),
        ).thenAnswer(
          (_) async => dio.Response(
              requestOptions: dio.RequestOptions(
                  path: "${MyUrls.mostPopular}home.json",
                  queryParameters: {"api-key": Variables.apiKey}),
              statusCode: 401,
              data: Er.error),
        );

        // act
        final call = dataSource.getNews("home");

        // assert
        expect(() => call, throwsA(isA<ServerException>()));
      },
    );
  });
}
