import 'package:flutter/material.dart';


class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({super.key,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(microseconds: 300),
    margin: EdgeInsets.symmetric(horizontal: 8),
      width: isActive? 20 :10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
            color: isActive ?  Colors.black:Colors.grey
      ),
    );
  }
}
