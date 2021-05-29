import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({this.location});

  final String location;

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                LineIcons.mapMarker,
                color: Colors.pinkAccent,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                location,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Icon(LineIcons.bell, color: Colors.grey, size: 26)
        ],
      ),
    );
  }
}
