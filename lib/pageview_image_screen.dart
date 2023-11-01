

import 'package:flutter/material.dart';

import 'package:flutter_image_indicator/appdata_image.dart';
import 'package:flutter_image_indicator/display_image.dart';
import 'package:flutter_image_indicator/indicator.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({super.key});

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7cbbc3),
        title: Text('J.K Rowling'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemCount: appDataImage.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appDataImage: appDataImage[index]);
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataImage.length,
                    (index) =>
                        Indicator(isActive: _selectedIndex == index ? true : false))
              ],
            ),
          )
        ],
      ),
    );
  }

}
