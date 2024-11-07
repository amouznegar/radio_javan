
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:radiojavan_app/models/artists_data_model.dart';
import 'package:radiojavan_app/models/song_model.dart';
import 'package:radiojavan_app/models/songs_data_model.dart';
import 'package:radiojavan_app/network/rest_client.dart';
import 'package:dio/dio.dart';
class SongsController extends GetxController {
   final player = AudioPlayer();

   final isLoading = RxBool(false);
   final isArtistsLoading = RxBool(false);
   final errorMessage = ''.obs;
   final latestSongResponse = Rx<SongsDataModel?>(null);
   final latestArtistsResponse = Rx<ArtistsDataModel?>(null);
   RestClient client = RestClient(Dio());

   final isPlayed = RxBool(false);
   final isAction = RxBool(false);
   final currentMusic = Rx<SongModel?>(null);
   //bool isPlayed = false;
   //late MusicModel currentMusic;

   setPlayed(bool state) {
      isPlayed.value = state;
      print('isPlayed ${isPlayed.value}');
   }

   setCurrentMusic(SongModel song) {
      currentMusic.value = song;
   }

   setAction(bool state) {
      isAction.value = state;
      print('isPlayed ${isAction.value}');
   }


   getLatestSongs()async {

      isLoading.value = true;

      try{
         latestSongResponse.value = await client.getLatestSongs();
      }catch(e){
         errorMessage.value = "Error";
      }


      isLoading.value = false;
   }

   getLatestArtists()async {

      isArtistsLoading.value = true;

      try{
         latestArtistsResponse.value = await client.getLatestArtists();
      }catch(e){
         errorMessage.value = "Error";
      }


      isArtistsLoading.value = false;
   }

   pauseMusic()async {
      await player.setUrl(currentMusic.value!.mp3Url!);
      player.play();
      setAction(false);
      print('play ${isAction.value}');
   }

      playMusic ()async {

      player.stop();
      setAction(true);
      print(' pause ${isAction.value}');
   }




}