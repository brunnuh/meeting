import 'package:flutter/material.dart';
import 'package:meeting/data/data.dart';
import 'package:meeting/models/meet.dart';

class CardWidget extends StatelessWidget {

  final Meet meet;

  CardWidget({this.meet});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
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
            left: 20,
            top: 20,
            child: Container(
              width: 60,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.4),
              ),
              child: Text(
                "2.4km",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              padding:
              const EdgeInsets.only(left: 20, bottom: 20),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: meet.name + ", ",
                      children: [
                        TextSpan(text: meet.age),
                      ],
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: "Dancer" + ",  ",
                      children: [
                        TextSpan(text: "Music"),
                      ],
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
