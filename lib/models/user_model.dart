import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class User {
  int? id;
  String? name;
  @JsonKey(name: 'username')
  String? username;
  String? email;
  String? phone;
  String? website;

  User(
    this.id,
    this.name,
    this.username,
    this.email,
    this.phone,
    this.website
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

}