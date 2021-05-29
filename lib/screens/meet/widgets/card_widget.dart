import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/profile/profile_screen.dart';

class CardWidget extends StatelessWidget {
  final Meet meet;

  CardWidget({this.meet});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (_) => ProfileScreen(
              meet: meet,
            ),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(meet.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 40,
                padding: const EdgeInsets.only(left: 10, top: 5),
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(111, 111, 111, 0.5),
                child: Container(
                  child: Text(
                    meet.name + ", " + meet.age,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
