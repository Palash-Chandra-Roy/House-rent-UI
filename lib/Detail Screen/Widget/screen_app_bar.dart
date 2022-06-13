import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent_ui/Model/house.dart';

class ScreenAppBar extends StatelessWidget {
  final House house;

  const ScreenAppBar({Key? key,
  required this.house})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,fit: BoxFit.cover,
            height: double.infinity,

          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     GestureDetector(
                       onTap: (){
                         Navigator.of(context).pop();
                       },
                       child: Container(
                         height: 20,
                         width: 20,
                         padding: EdgeInsets.all(5),
                         decoration: BoxDecoration(
                           color: Colors.grey,
                             shape: BoxShape.circle),
                         child: SvgPicture.asset('assets/icon/arrow.svg'),
                       ),
                     ),
                    Container(
                      height: 20,
                      width: 20,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/icon/mark.svg'),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
