// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongModel _$SongModelFromJson(Map<String, dynamic> json) => SongModel(
      id: json['id'] as String?,
      catId: json['cat_id'] as String?,
      mp3Type: json['mp3_type'] as String?,
      mp3Title: json['mp3_title'] as String?,
      mp3Url: json['mp3_url'] as String?,
      mp3ThumbnailB: json['mp3_thumbnail_b'] as String?,
      mp3ThumbnailS: json['mp3_thumbnail_c'] as String?,
      mp3Duration: json['mp3_duration'] as String?,
      mp3Artist: json['mp3_artist'] as String?,
      mp3Description: json['mp3_description'] as String?,
      totalRate: json['total_rate'] as String?,
      rateAvg: json['rate_avg'] as String?,
      totalViews: json['total_views'] as String?,
      totalDownload: json['total_download'] as String?,
      cid: json['cid'] as String?,
      categoryName: json['category_name'] as String?,
      categoryImage: json['category_image'] as String?,
      categoryImageThumb: json['category_image_thumb'] as String?,
    );

Map<String, dynamic> _$SongModelToJson(SongModel instance) => <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'mp3_type': instance.mp3Type,
      'mp3_title': instance.mp3Title,
      'mp3_url': instance.mp3Url,
      'mp3_thumbnail_b': instance.mp3ThumbnailB,
      'mp3_thumbnail_c': instance.mp3ThumbnailS,
      'mp3_duration': instance.mp3Duration,
      'mp3_artist': instance.mp3Artist,
      'mp3_description': instance.mp3Description,
      'total_rate': instance.totalRate,
      'rate_avg': instance.rateAvg,
      'total_views': instance.totalViews,
      'total_download': instance.totalDownload,
      'cid': instance.cid,
      'category_name': instance.categoryName,
      'category_image': instance.categoryImage,
      'category_image_thumb': instance.categoryImageThumb,
    };
