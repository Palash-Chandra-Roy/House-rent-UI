import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              MenuInfo(
                  imageUrl:'assets/icon/bedroom.svg',
                  content: '5 Bathroom\n3 Master Bedroom'),
              MenuInfo(
                  imageUrl:'assets/icon/bedroom.svg',
                  content: '5 Bathroom\n3 Toilet'),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              MenuInfo(
                  imageUrl:'assets/icon/kitchen.svg',
                  content: ' 2 Kitchen\n120 sqft'),
              MenuInfo(
                  imageUrl:'assets/icon/parking.svg',
                  content: ' 2 Parking\n120 sqft'),
            ],
          ),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;

  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(
              width: 20,
            ),
            Text(
              content,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
