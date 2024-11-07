// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artists_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistsDataModel _$ArtistsDataModelFromJson(Map<String, dynamic> json) =>
    ArtistsDataModel(
      artists: (json['ONLINE_MP3'] as List<dynamic>?)
          ?.map((e) => ArtistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistsDataModelToJson(ArtistsDataModel instance) =>
    <String, dynamic>{
      'ONLINE_MP3': instance.artists,
    };
