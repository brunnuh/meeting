import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/talk/widgets/open_conversation_widget.dart';

class ListTileCustom extends StatelessWidget {
  final Meet meet;

  ListTileCustom({this.meet});

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
       Navigator.of(context).push(
         CupertinoPageRoute(
           builder: (_) => OpenConversationWidget(
             meet:  meet,
           ),
         ),
       );
     },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                    image: AssetImage(meet.image),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meet.name,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Single, " + meet.age,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
