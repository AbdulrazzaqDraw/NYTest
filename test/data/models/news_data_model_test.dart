import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nytimestest/features/new_york_times/data/models/news_data_model.dart';

import '../../helpers/json_reader.dart';

void main() {
  const tNewsDataModel = NewsDataModel(
      title: "",
      url: "",
      abstract: "",
      byline: "",
      shortUrl: "",
      eta_id: 0,
      section: "",
      subsection: "",
      uri: "",
      createdDate: "",
      itemType: "",
      kicker: "",
      materialTypeFacet: "",
      desFacet: [""],
      geoFacet: [""],
      multimedia: [],
      orgFacet: [""],
      perFacet: [""],
      publishedDate: "",
      updatedDate: "");

  group('from json', () {
    test(
      'should return a valid model from json',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap = json.decode(
          readJson('helpers/dummy_data/dummy_news_data_response.json'),
        );

        // act
        final result = NewsDataModel.fromJson(jsonMap);

        // assert
        expect(result, equals(tNewsDataModel));
      },
    );
  });

  group('to json', () {
    test(
      'should return a json map containing proper data',
      () async {
        // act
        final result = tNewsDataModel.toJson();

        // assert
        final expectedJsonMap = {
          "title": "",
          "url": "",
          "abstract": "",
          "byline": "",
          "shortUrl": "",
          "eta_id": 0,
          "section": "",
          "subsection": "",
          "uri": "",
          "createdDate": "",
          "itemType": "",
          "kicker": "",
          "materialTypeFacet": "",
          "desFacet": [""],
          "geoFacet": [""],
          "multimedia": [],
          "orgFacet": [""],
          "perFacet": [""],
          "publishedDate": "",
          "updatedDate": "",
        };
        expect(result, equals(expectedJsonMap));
      },
    );
  });
}
