import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:restaurant_app/core/components/bottom_nav_button.dart';

import '../../../core/constants/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  final int currentIndex;
  final void Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppResolutions.width(context) / 25,
          vertical: AppResolutions.height(context) / 60),
          padding: EdgeInsets.symmetric(
          horizontal: AppResolutions.width(context) / 25,
          ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppResolutions.width(context) / 30),
        color: AppColors.primary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavButton(
            label: 'Home',
            icon: HugeIcons.strokeRoundedHome02,
            isActive: currentIndex == 0,
            click: () => onNavTap(0),
          ),
          BottomNavButton(
            label: 'Menus',
            icon: HugeIcons.strokeRoundedShopSign,
            isActive: currentIndex == 1,
            click: () => onNavTap(1),
          ),
         
          BottomNavButton(
            label: 'Cart',
            icon: Icons.shopping_cart_outlined,
            isActive: currentIndex == 3,
            click: () => onNavTap(3),
          ),
          BottomNavButton(
            label: 'Profile',
            icon: HugeIcons.strokeRoundedUser,
            isActive: currentIndex == 4,
            click: () => onNavTap(4),
          ),
        ],
      ),
    );
  }
}
