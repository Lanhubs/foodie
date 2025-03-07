import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class NewItemsPage extends StatelessWidget {
  const NewItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Dishes'),
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 
           AppResolutions.width(context)/25,
          ),
          child: GridView.builder(
            gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: 0.6,
              crossAxisSpacing: AppResolutions.width(context)/25,
              mainAxisSpacing: AppResolutions.width(context)*0.05,
            ),
            itemCount: Dummy.products.length,
            itemBuilder: (context, index) {
              return ProductTileSquare(
                bothSide: false,
                data: Dummy.products.first,
              );
            },
          ),
        ),
      ),
    );
  }
}
