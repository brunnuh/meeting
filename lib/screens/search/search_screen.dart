import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meeting/data/data.dart';
import 'package:meeting/models/meet.dart';
import 'package:meeting/screens/search/widgets/app_bar_widget.dart';
import 'package:meeting/screens/search/widgets/card_widget.dart';

import 'package:tcard/tcard.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TCardController tCardController = TCardController();

  int indexBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: indexBar >= data.length
          ? AppBar(
              elevation: 0,
            )
          : AppBarWidget(
              location: data[indexBar].location,
            ),
      body: indexBar >= data.length
          ? Center(
              child: Text(
                "no Profiles",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          : Container(
              child: Column(
                children: [
                  TCard(
                    onForward: (_, __) {
                      setState(
                        () {
                          indexBar++;
                        },
                      );
                    },
                    controller: tCardController,
                    cards: List.generate(
                      data.length,
                      (index) => CardWidget(meet: data[index],),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          tCardController.forward(
                              direction: SwipDirection.Left);
                          setState(() {
                            indexBar++;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            LineIcons.times,
                            size: 25,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        onTap: () {
                          tCardController.forward(
                              direction: SwipDirection.Right);
                          setState(() {
                            indexBar++;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            LineIcons.heartAlt,
                            size: 25,
                            color: Colors.white,
                          ),
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

/*Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),

                  ],
                );*/
