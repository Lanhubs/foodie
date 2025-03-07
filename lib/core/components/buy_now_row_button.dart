import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../constants/constants.dart';

class BuyNowRow extends StatelessWidget {
  const BuyNowRow({
    super.key,
    required this.onCartButtonTap,
    required this.onBuyButtonTap,
  });

  final void Function() onCartButtonTap;
  final void Function() onBuyButtonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding,
      ),
      child: Row(
        children: [
          OutlinedButton(
            onPressed: onCartButtonTap,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              padding:  EdgeInsets.all(AppDefaults.padding * 1.2),
            ),
            child: Icon(HugeIcons.strokeRoundedShoppingBasket01, color: Colors.black,),
          ),
          const SizedBox(width: AppDefaults.padding),
          Expanded(
            child: ElevatedButton(
              onPressed: onBuyButtonTap,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(AppDefaults.padding * 1.2),
              ),
              child: const Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
