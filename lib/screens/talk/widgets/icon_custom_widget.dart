import 'package:flutter/material.dart';

class IconCustomWidget extends StatelessWidget {
  const IconCustomWidget({this.iconData, this.height = 0, this.width = 40, this.margin, this.radius});

  final IconData iconData;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;
  final double radius;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: Color(0XFFFADCEA),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Icon(iconData, color: Colors.pinkAccent,),
    );
  }
}
