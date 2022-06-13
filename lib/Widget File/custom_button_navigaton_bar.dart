import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtomNavigationBar extends StatelessWidget {

  final bottomBarItem =[
    'home',
    'home_search',
    'notification',
    'chat',
    'home_mark'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0,3),

          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: bottomBarItem.map((e) => SvgPicture.asset('assets/icon/$e.svg',
        color: Theme.of(context).primaryColor,))
          .toList()
      ),
    );
  }
}
