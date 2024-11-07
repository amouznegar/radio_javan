// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SongsDataModel _$SongsDataModelFromJson(Map<String, dynamic> json) =>
    SongsDataModel(
      songsList: (json['ONLINE_MP3'] as List<dynamic>?)
          ?.map((e) => SongModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SongsDataModelToJson(SongsDataModel instance) =>
    <String, dynamic>{
      'ONLINE_MP3': instance.songsList,
    };
