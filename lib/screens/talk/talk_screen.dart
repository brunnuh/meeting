import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/data/data.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/talk/widgets/list_tile_custom.dart';
import 'package:meeting/screens/talk/widgets/open_conversation_widget.dart';

class TalkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      children: [
        Text(
          "Talk",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return ListTileCustom(
              meet: data[index],
            );
          },
          itemCount: data.length,
          primary: false,
          shrinkWrap: true,
        )
      ],
    );
  }
}
