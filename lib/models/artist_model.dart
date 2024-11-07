import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'artist_model.g.dart';
@JsonSerializable()
class ArtistModel {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'artist_name')
  String? artistName;
  @JsonKey(name: 'artist_image')
  String? artistImage;
  @JsonKey(name: 'artist_image_thumb')
  String? artistImageThumb;

  ArtistModel(
      {this.id, this.artistName, this.artistImage, this.artistImageThumb});


  factory ArtistModel.fromJson(Map<String, dynamic> json) => _$ArtistModelFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistModelToJson(this);


}