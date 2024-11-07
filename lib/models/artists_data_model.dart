import 'package:json_annotation/json_annotation.dart';
import 'artist_model.dart';
part 'artists_data_model.g.dart';
@JsonSerializable()
class ArtistsDataModel {
  @JsonKey(name: 'ONLINE_MP3')
  List<ArtistModel>? artists;

  ArtistsDataModel({this.artists});


  factory ArtistsDataModel.fromJson(Map<String, dynamic> json) => _$ArtistsDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistsDataModelToJson(this);


  }