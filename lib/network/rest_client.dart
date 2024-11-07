import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:radiojavan_app/models/artists_data_model.dart';
import 'package:radiojavan_app/models/songs_data_model.dart';
import 'package:radiojavan_app/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

//rest_client
@RestApi(baseUrl: 'https://mobilemasters.ir/apps/radiojavan')
abstract class RestClient {

  factory  RestClient(Dio dio,{String? baseUrl}) =  _RestClient;
/*
  @GET('/users')
  Future<List<User>> getUsers();*/

  @GET('/api.php?latest')
  Future<SongsDataModel> getLatestSongs();

  @GET('/api.php?recent_artist_list')
  Future<ArtistsDataModel> getLatestArtists();


}