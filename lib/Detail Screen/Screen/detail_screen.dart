import 'package:flutter/material.dart';
import 'package:house_rent_ui/Detail%20Screen/Widget/about.dart';
import 'package:house_rent_ui/Detail%20Screen/Widget/contain_info.dart';
import 'package:house_rent_ui/Detail%20Screen/Widget/house_info.dart';
import 'package:house_rent_ui/Detail%20Screen/Widget/screen_app_bar.dart';
import 'package:house_rent_ui/Model/house.dart';

class DetailScreen extends StatelessWidget {
  final House house;

  const DetailScreen({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenAppBar(house: house),
            SizedBox(
              height: 20,
            ),
            ContainInfo(
              house: house,
            ),
            SizedBox(
              height: 20,
            ),
            HouseInfo(),
            SizedBox(
              height: 20,
            ),
            About(),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('Booking Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 4,
                width: 200,
                color: Colors.grey,
              ),
            ),SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
