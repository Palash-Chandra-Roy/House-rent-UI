import 'package:flutter/material.dart';
import 'package:house_rent_ui/Model/house.dart';
import 'package:house_rent_ui/Widget%20File/circleIconButton.dart';

class BestOffer extends StatelessWidget {
  final ListOffer = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                'See All',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 14),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ...ListOffer.map((el) => Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(el.imageUrl),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              el.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              el.address,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                      right: 0,
                        child: CircleIconButton(
                          iconUrl: 'assets/icon/heart.svg',
                          color: Colors.grey,
                        )
                    )
                  ],
                ),
              )).toList()
        ],
      ),
    );
  }
}
