import 'package:flutter/material.dart';
import 'package:house_rent_ui/Detail%20Screen/Screen/detail_screen.dart';
import 'package:house_rent_ui/Model/house.dart';
import 'package:house_rent_ui/Widget%20File/circleIconButton.dart';

class RecommendedHouse extends StatelessWidget {

  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: EdgeInsets.all(15),

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=>GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(house: recommendedList[index])));
            },
            child: Container(
              height: 300,
              width: 230,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color: Colors.white
              ),
              child: Stack(
                children: [
                 Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image:AssetImage(
                         recommendedList[index].imageUrl,
                       ),fit: BoxFit.cover,
                     )
                   ),
                 ),
                  Positioned(
                    right: 15,
                      top: 15,
                      child: CircleIconButton(
                        iconUrl: 'assets/icon/mark.svg',
                        color: Theme.of(context).accentColor,
                      )
                  ),
                  Positioned(
                    bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        color: Colors.white54,
                        padding:EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  recommendedList[index].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(fontWeight:FontWeight.bold,fontSize: 16),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  recommendedList[index].address,
                                  style: Theme.of(context).textTheme.headline1!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                            CircleIconButton(
                                iconUrl: 'assets/icon/mark.svg',
                                color: Theme.of(context).accentColor
                            ),
                          ],
                        ),
                      )
                  ),

                ],
              ),
            ),
          ),
          separatorBuilder: (_,index)=>SizedBox(width: 20,),
          itemCount: recommendedList.length
      ),
    );
  }
}
