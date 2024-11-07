
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radiojavan_app/widgets/mohebi_text.dart';

import '../models/artist_model.dart';

class ArtistsRow extends StatelessWidget {
  final ArtistModel artist;
  const ArtistsRow({super.key,required this.artist});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 180,
      width: 180,
      child: Column(
        children: [

          CachedNetworkImage(imageUrl: artist.artistImage!,
            height: 140,
            width: 140,
            errorWidget: (context, url, error) => Icon(Icons.error,color: Colors.white,),
          ),
          MohebiText(title: '${artist.artistName}', size: 12.0, color: Colors.white)


        ],
      ),
    );
  }
}
