import 'package:flutter/material.dart';
import 'package:meeting/data/data.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/meet/widgets/card_widget.dart';


class MeetScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      children: [
        Text(
          "Matches",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 240,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: data.length,
          itemBuilder: (_, index) {
            return CardWidget(meet: data[index],);
          },
        )
      ],
    );
  }


}
