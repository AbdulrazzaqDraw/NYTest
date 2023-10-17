import 'package:equatable/equatable.dart';

import '../../data/models/media_meta_data_data_model.dart';

class NewsDataEntity extends Equatable {
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

  const NewsDataEntity({
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
  });

  @override
  List<Object?> get props => [];
}
