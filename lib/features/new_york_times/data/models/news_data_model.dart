import 'package:json_annotation/json_annotation.dart';
import 'package:nytimestest/features/new_york_times/data/models/media_meta_data_data_model.dart';
import 'package:nytimestest/features/new_york_times/domain/entities/news_data.dart';


part 'news_data_model.g.dart';

@JsonSerializable()
class NewsDataModel extends NewsDataEntity {
  final String? section;
  final String? subsection;
  final String? title;
  final String? abstract;
  final String? url;
  final String? uri;
  final String? byline;
  final String? itemType;
  final String? updatedDate;
  final String? createdDate;
  final String? publishedDate;
  final String? materialTypeFacet;
  final String? kicker;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<MediaMetaDataDataModel>? multimedia;
  final String? shortUrl;
  final int? eta_id;

  const NewsDataModel({
    this.uri,
    this.url,
    this.section,
    this.subsection,
    this.byline,
    this.title,
    this.abstract,
    this.eta_id,
    this.createdDate,
    this.desFacet,
    this.geoFacet,
    this.itemType,
    this.kicker,
    this.materialTypeFacet,
    this.multimedia,
    this.orgFacet,
    this.perFacet,
    this.publishedDate,
    this.shortUrl,
    this.updatedDate,
  }) : super();

  Map<String, dynamic> toJson() => _$NewsDataModelToJson(this);

  factory NewsDataModel.fromJson(Map<String, dynamic> json) => _$NewsDataModelFromJson(json);
}
