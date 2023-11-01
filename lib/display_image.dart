import 'package:flutter/material.dart';
import 'package:flutter_image_indicator/appdata_image.dart';


class DisplayImage extends StatelessWidget {

  final AppDataImage appDataImage;

  const DisplayImage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(image: AssetImage(appDataImage.image), fit: BoxFit.cover)
      ),
    );
  }
}
