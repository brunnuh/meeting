import 'package:flutter/material.dart';
import 'package:meeting/screens/base/base_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'date app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BaseScreen(),
    );
  }
}
