// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistModel _$ArtistModelFromJson(Map<String, dynamic> json) => ArtistModel(
      id: json['id'] as String?,
      artistName: json['artist_name'] as String?,
      artistImage: json['artist_image'] as String?,
      artistImageThumb: json['artist_image_thumb'] as String?,
    );

Map<String, dynamic> _$ArtistModelToJson(ArtistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artist_name': instance.artistName,
      'artist_image': instance.artistImage,
      'artist_image_thumb': instance.artistImageThumb,
    };
