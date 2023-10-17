import 'package:equatable/equatable.dart';

class MediaMetaDataEntity extends Equatable {
  final String? url;
  final String? format;
  final int? height;
  final String? type;
  final int? width;

  const MediaMetaDataEntity({
    this.url,
    this.format,
    this.height,
    this.width,
    this.type
  });

  @override
  List<Object?> get props => [];
}
