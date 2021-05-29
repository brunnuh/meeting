import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/talk/widgets/icon_custom_widget.dart';
import 'package:meeting/screens/talk/widgets/talk_bubble.dart';
import 'package:meeting/screens/talk/widgets/text_field_widget.dart';

class OpenConversationWidget extends StatelessWidget {
  final Meet meet;

  OpenConversationWidget({this.meet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(meet.image),
              maxRadius: 23,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meet.name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "online 14 mins ago",
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        actions: [
          IconCustomWidget(
            iconData: Icons.phone,
            radius: 7,
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
          const SizedBox(
            width: 10,
          ),
          IconCustomWidget(
            iconData: Icons.videocam_rounded,
            radius: 7,
            margin: EdgeInsets.symmetric(vertical: 10),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: [
          TalkBubble(content: "Hello, how are you?", mine: false),
          TalkBubble(content: "i'm good and you?",),
          TalkBubble(content: "nice, i'm good too.", mine: false,),
          TalkBubble(content: "Where do you live?",)
        ],
      ),
      floatingActionButton: TextFieldWidget(),
    );
  }
}
