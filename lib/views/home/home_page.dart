import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:restaurant_app/core/constants/constants.dart';
import 'package:restaurant_app/views/menu/components/category_tile.dart';
import '../../core/constants/app_icons.dart';

import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/ad_space.dart';
import 'components/our_new_item.dart';
import 'components/popular_packs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.drawerPage);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F6F3),
                    shape: const CircleBorder(),
                  ),
                  child: Icon(HugeIcons.strokeRoundedHamburger01),
                ),
              ),
              floating: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.search);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F6F3),
                      shape: const CircleBorder(),
                    ),
                    child: SvgPicture.asset(AppIcons.search),
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: AdSpace(),
            ),
           /*  SliverToBoxAdapter(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal:AppResolutions.width(context)/25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryTile(
                      imageLink: 'https://i.imgur.com/tGChxbZ.png',
                      label: 'Vegetables',
                      backgroundColor: AppColors.primary,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.categoryDetails);
                      },
                    ),
                    CategoryTile(
                      imageLink: 'https://i.imgur.com/yOFxoIP.png',
                      label: 'Meat And Fish',
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.categoryDetails);
                      },
                    ),
                    CategoryTile(
                      imageLink: 'https://i.imgur.com/fwyz4oC.png',
                      label: 'Office Packages',
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.categoryDetails);
                      },
                    ),
                    CategoryTile(
                      imageLink: 'https://i.imgur.com/O2ZX5nR.png',
                      label: 'Heavy',
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.categoryDetails);
                      },
                    ),
                  ],
                ),
              ),
            ),
            */ 
            const SliverToBoxAdapter(
              child: PopularPacks(),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppDefaults.padding),
              sliver: SliverToBoxAdapter(
                child: OurNewItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
