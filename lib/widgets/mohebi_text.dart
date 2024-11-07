
import 'package:flutter/material.dart';

class MohebiText extends StatelessWidget {
  final String title;
  final Color color;
  final double size;
  const MohebiText({super.key,required this.title,required this.size,required this.color});

  @override
  Widget build(BuildContext context) {
    return Text('${title}', style: TextStyle(
        color: color,
        fontSize: size
    ),);
  }
}
