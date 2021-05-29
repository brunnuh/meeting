import 'package:flutter/material.dart';

class TalkBubble extends StatelessWidget {
  final bool mine;
  final String content;

  TalkBubble({this.mine = true, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: mine ? Alignment.centerRight : Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: mine ? EdgeInsets.only(left: 100) : EdgeInsets.only(right: 100),
      child: Card(
        color: mine ? Colors.pinkAccent : Colors.white,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            content,
            style: TextStyle(
              color: mine ? Colors.white : Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
