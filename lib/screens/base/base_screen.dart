import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:meeting/screens/meet/meet_screen.dart';
import 'package:meeting/screens/profile/profile_screen.dart';
import 'package:meeting/screens/search/search_screen.dart';
import 'package:meeting/screens/talk/talk_screen.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  PageController pageController = PageController();

  int select = 0;
  double size = 27;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          SearchScreen(),
          MeetScreen(),
          TalkScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                LineIcons.copy,
                color: select == 0 ? Colors.pinkAccent : Colors.grey,
                size: size,
              ),
              onPressed: () {
                setState(() {
                  select = 0;
                  pageController.jumpToPage(0);
                });
              },
            ),
            IconButton(
              icon: Icon(
                LineIcons.heart,
                color: select == 1 ? Colors.pinkAccent : Colors.grey,
                size: size,
              ),
              onPressed: () {
                setState(() {
                  select = 1;
                  pageController.jumpToPage(1);
                });
              },
            ),
            IconButton(
              icon: Icon(
                LineIcons.facebookMessenger,
                color: select == 2 ? Colors.pinkAccent : Colors.grey,
                size: size,
              ),
              onPressed: () {
                setState(() {
                  select = 2;
                  pageController.jumpToPage(2);
                });
              },
            ),
            IconButton(
              icon: Icon(
                LineIcons.user,
                color: select == 3 ? Colors.pinkAccent : Colors.grey,
                size: size,
              ),
              onPressed: () {
                setState(() {
                  select = 3;
                  pageController.jumpToPage(3);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
