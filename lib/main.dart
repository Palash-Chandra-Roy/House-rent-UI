import 'package:flutter/material.dart';
import 'package:house_rent_ui/HomePage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Rent ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor:Color(0xFFF5F6F6),
        primaryColor: Color(0xFF811883),
        accentColor: Color(0xFFFA5019),
        textTheme: TextTheme(
          headline1:TextStyle(
            color: Color(0xFF100E34),
          ),
          bodyText1: TextStyle(color:Color(0xFF100E34).withOpacity(0.5)),
        )
      ),
      home:HomePage(),
    );
  }
}

