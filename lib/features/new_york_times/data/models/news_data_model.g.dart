// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDataModel _$NewsDataModelFromJson(Map<String, dynamic> json) =>
    NewsDataModel(
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      byline: json['byline'] as String?,
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      eta_id: json['eta_id'] as int?,
      createdDate: json['createdDate'] as String?,
      desFacet: (json['desFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      geoFacet: (json['geoFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemType: json['itemType'] as String?,
      kicker: json['kicker'] as String?,
      materialTypeFacet: json['materialTypeFacet'] as String?,
      multimedia: (json['multimedia'] as List<dynamic>?)
          ?.map(
              (e) => MediaMetaDataDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      orgFacet: (json['orgFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      perFacet: (json['perFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      publishedDate: json['publishedDate'] as String?,
      shortUrl: json['shortUrl'] as String?,
      updatedDate: json['updatedDate'] as String?,
    );

Map<String, dynamic> _$NewsDataModelToJson(NewsDataModel instance) =>
    <String, dynamic>{
      'section': instance.section,
      'subsection': instance.subsection,
      'title': instance.title,
      'abstract': instance.abstract,
      'url': instance.url,
      'uri': instance.uri,
      'byline': instance.byline,
      'itemType': instance.itemType,
      'updatedDate': instance.updatedDate,
      'createdDate': instance.createdDate,
      'publishedDate': instance.publishedDate,
      'materialTypeFacet': instance.materialTypeFacet,
      'kicker': instance.kicker,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'multimedia': instance.multimedia,
      'shortUrl': instance.shortUrl,
      'eta_id': instance.eta_id,
    };
