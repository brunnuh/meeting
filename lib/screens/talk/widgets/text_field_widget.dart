import 'package:flutter/material.dart';

import 'icon_custom_widget.dart';

class TextFieldWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ListTile(
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Send Message",
          ),
          maxLines: null,
        ),
        trailing: IconCustomWidget(iconData: Icons.mic_rounded, height: 50, radius: 50,width: 50,),
      ),
    );
  }
}
