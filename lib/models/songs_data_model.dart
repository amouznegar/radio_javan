
import 'package:json_annotation/json_annotation.dart';
import 'package:radiojavan_app/models/song_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'songs_data_model.g.dart';
@JsonSerializable()
class SongsDataModel {
  @JsonKey(name: 'ONLINE_MP3')
  List<SongModel>? songsList;

  SongsDataModel({this.songsList});


  factory SongsDataModel.fromJson(Map<String, dynamic> json) => _$SongsDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$SongsDataModelToJson(this);


}