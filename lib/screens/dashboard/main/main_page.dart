
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:radiojavan_app/controller/songs_controller.dart';
import 'package:radiojavan_app/network/rest_client.dart';
import 'package:radiojavan_app/screens/about/about_page.dart';
import 'package:dio/dio.dart';
import 'package:radiojavan_app/widgets/artists_row.dart';
import 'package:radiojavan_app/widgets/mohebi_text.dart';
import 'package:radiojavan_app/widgets/music_row.dart';

import '../../../models/user_model.dart';

class MainPage extends StatelessWidget {
    MainPage({super.key});

    SongsController controller = Get.put(SongsController());




  @override
  Widget build(BuildContext context) {

    controller.getLatestSongs();
    controller.getLatestArtists();

    return Scaffold(
      backgroundColor: Colors.black38,

      body: Container(
        height: Get.height,
        width: Get.width,
        child: Stack(


        children: [

          Column(
            children: [

              Container(
                child: Obx( () {

                  if(controller.isLoading.value) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else {
                    print('');
                    return Container(
                      height: 190,
                      child: ListView.builder(
                          itemCount: controller.latestSongResponse.value?.songsList?.length
                          ,scrollDirection: Axis.horizontal
                          ,itemBuilder: (context , index) {


                        var item = controller.latestSongResponse.value?.songsList?.elementAt(index);
                        var mp3ThumbnailB = item?.mp3ThumbnailB;

                        print('mp3ThumbnailB $mp3ThumbnailB');

                        return MusicRow(song: item!);


                      }),
                    );

                  }

                } ),
              ),

              Container(
                child: Obx( () {

                  if(controller.isArtistsLoading.value) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else {
                    return Container(
                      height: 190,
                      child: ListView.builder(
                          itemCount: controller.latestArtistsResponse.value?.artists?.length
                          ,scrollDirection: Axis.horizontal
                          ,itemBuilder: (context , index) {

                        var item = controller.latestArtistsResponse.value?.artists?.elementAt(index);
                        return ArtistsRow(artist: item!);


                      }),
                    );

                  }

                } ),
              ),

              Container(
                child: Obx( () {

                  if(controller.isLoading.value) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }else {
                    return Container(
                      height: 190,
                      child: ListView.builder(
                          itemCount: controller.latestSongResponse.value?.songsList?.length
                          ,scrollDirection: Axis.horizontal
                          ,itemBuilder: (context , index) {


                        var item = controller.latestSongResponse.value?.songsList?.elementAt(index);
                        var mp3ThumbnailB = item?.mp3ThumbnailB;

                        print('mp3ThumbnailB $mp3ThumbnailB');

                        return MusicRow(song: item!);


                      }),
                    );

                  }

                } ),
              ),
            ],
          ),

        Obx((){

          if(controller.isPlayed.value==true){
             //controller.playMusic();
            return Miniplayer(
              minHeight: 70,
              maxHeight: Get.height,
              builder: (height, percentage) {
                if(percentage > 0.2){
                  return Container(
                    child: SizedBox(

                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CachedNetworkImage(imageUrl:'${controller.currentMusic.value!.mp3ThumbnailB!}', fit: BoxFit.cover),
                          ClipRRect( // Clip it cleanly.
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [

                                    CachedNetworkImage(imageUrl: controller.currentMusic.value!.mp3ThumbnailB!,
                                    width: 140,height: 140,),
                                    MohebiText(title: controller.currentMusic.value!.mp3Title!, size: 14.0, color: Colors.black54),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                      Obx(()=>  IconButton(onPressed: ()async{

                                        //controller.setAction(!controller.isAction.value);

                                        if(controller.isAction.value) {
                                          controller.pauseMusic();
                                        }else {

                                          await controller.playMusic();
                                        }


                                      }, icon: controller.isAction.value ? Icon(Icons.play_arrow ) : Icon(Icons.pause))),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.stop)),


                                        
                                      ],
                                    )

                                  ],

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                else
                {
                  return miniPlayerView();
                }
              },
            );
          }else {
            return SizedBox();
          }


        })



        ],

      ),),
    );
  }

  Widget miniPlayerView() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [


          ClipOval(
            child:  CachedNetworkImage(imageUrl: controller.currentMusic.value!.mp3ThumbnailB!,
              height: 40,
              width: 40,
              errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.white,),
            ),
          ),
          Column(
            children: [

              MohebiText(title: '${controller.currentMusic.value!.mp3Title}', size: 14, color: Colors.white),
              MohebiText(title: '${controller.currentMusic.value!.mp3Artist!}', size: 14, color: Colors.white),

            ],
          )

        ],

      ),
    );
  }

}
