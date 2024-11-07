import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'song_model.g.dart';
@JsonSerializable()
class SongModel {
  String? id;
  @JsonKey(name: 'cat_id')
  String? catId;
  @JsonKey(name: 'mp3_type')
  String? mp3Type;
  @JsonKey(name: 'mp3_title')
  String? mp3Title;
  @JsonKey(name: 'mp3_url')
  String? mp3Url;
  @JsonKey(name: 'mp3_thumbnail_b')
  String? mp3ThumbnailB;
  @JsonKey(name: 'mp3_thumbnail_c')
  String? mp3ThumbnailS;
  @JsonKey(name: 'mp3_duration')
  String? mp3Duration;
  @JsonKey(name: 'mp3_artist')
  String? mp3Artist;
  @JsonKey(name: 'mp3_description')
  String? mp3Description;
  @JsonKey(name: 'total_rate')
  String? totalRate;
  @JsonKey(name: 'rate_avg')
  String? rateAvg;
  @JsonKey(name: 'total_views')
  String? totalViews;
  @JsonKey(name: 'total_download')
  String? totalDownload;
  @JsonKey(name: 'cid')
  String? cid;
  @JsonKey(name: 'category_name')
  String? categoryName;
  @JsonKey(name: 'category_image')
  String? categoryImage;
  @JsonKey(name: 'category_image_thumb')
  String? categoryImageThumb;

  SongModel({this.id,
    this.catId,
    this.mp3Type,
    this.mp3Title,
    this.mp3Url,
    this.mp3ThumbnailB,
    this.mp3ThumbnailS,
    this.mp3Duration,
    this.mp3Artist,
    this.mp3Description,
    this.totalRate,
    this.rateAvg,
    this.totalViews,
    this.totalDownload,
    this.cid,
    this.categoryName,
    this.categoryImage,
    this.categoryImageThumb});


  factory SongModel.fromJson(Map<String, dynamic> json) => _$SongModelFromJson(json);
  Map<String, dynamic> toJson() => _$SongModelToJson(this);

}