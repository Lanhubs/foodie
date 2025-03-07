import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import 'profile_squre_tile.dart';

class ProfileHeaderOptions extends StatelessWidget {
  const ProfileHeaderOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppDefaults.padding),
      padding:  EdgeInsets.all(AppResolutions.height(context)*0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppDefaults.borderRadius,
        boxShadow: AppDefaults.boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProfileSqureTile(
            label: 'All Order',
            icon: HugeIcons.strokeRoundedTruckDelivery,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.myOrder);
            },
          ),
          ProfileSqureTile(
            label: 'Voucher',
            icon: HugeIcons.strokeRoundedVoucher,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.coupon);
            },
          ),
          ProfileSqureTile(
            label: 'Address',
            icon: HugeIcons.strokeRoundedLocationOffline01,
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.deliveryAddress);
            },
          ),
        ],
      ),
    );
  }
}
