import 'package:flutter/material.dart';
import 'package:house_rent_ui/Model/house.dart';

class ContainInfo extends StatelessWidget {
  final House house;

  const ContainInfo({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(house.name,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(
            height: 5,
          ),
          Text(house.address,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 14)),
          SizedBox(
            height: 15,
          ),
          Text(
            '5000 sqft',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '\$4455',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
              TextSpan(
                  text: ' Per Month',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 16))
            ]),
          ),
        ],
      ),
    );
  }
}
