import 'package:flutter/material.dart';
import 'package:house_rent_ui/Widget%20File/custom_button_navigaton_bar.dart';
import '../Widget File/Custom_app_bar/custom_app_abr.dart';
import '../Widget File/best_offer.dart';
import '../Widget File/categories.dart';
import '../Widget File/recommended_house.dart';
import '../Widget File/search_input.dart';
import '../Widget File/welcome_text.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendedHouse(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtomNavigationBar(),
    );
  }
}







