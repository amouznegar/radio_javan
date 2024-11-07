
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/songs_controller.dart';
import '../models/song_model.dart';

class MusicRow extends StatelessWidget {
  final SongModel song;
  const MusicRow({super.key,required this.song});

  @override
  Widget build(BuildContext context) {

    SongsController controller = Get.find();

    return InkWell(
      onTap: () {
        print('InkWell ${controller.isPlayed.value}');
        controller.setPlayed(true);

        controller.setCurrentMusic(song);
      },
      child:  Container(
        height: 180,
        width: 180,
        child: Column(
          children: [

            CachedNetworkImage(imageUrl: song.mp3ThumbnailB!,
              height: 140,
              width: 140,
              errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.white,),
            ),
            Text('${song.mp3Title}', style: TextStyle(
                color: Colors.white
            ),)


          ],
        ),
      ),
    );

  }
}
