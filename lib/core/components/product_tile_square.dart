import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../constants/constants.dart';
import '../models/dummy_product_model.dart';
import '../routes/app_routes.dart';
import 'network_image.dart';

class ProductTileSquare extends StatelessWidget {
  bool bothSide = false;
  ProductTileSquare({
    super.key,
    required this.data,
    required this.bothSide,
  });

  final ProductModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: bothSide
          ? EdgeInsets.only(right: AppResolutions.width(context) / 25)
          : EdgeInsets.zero,
      child: Material(
        borderRadius:
            BorderRadius.circular(AppResolutions.width(context) * 0.01),
        color: AppColors.scaffoldBackground,
        child: Stack(children: [
          InkWell(
            borderRadius:
                BorderRadius.circular(AppResolutions.width(context) * 0.02),
            onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
            child: Container(
              width: AppResolutions.width(context) * 0.47,
              height: 296,
              padding: EdgeInsets.all(AppResolutions.width(context)),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: AppColors.placeholder),
                borderRadius:
                    BorderRadius.circular(AppResolutions.width(context) * 0.02),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(AppResolutions.width(context) / 2),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: NetworkImageWithLoader(
                        data.cover,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    data.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Text(
                    data.weight,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$${data.price.toInt()}',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '\$${data.mainPrice}',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              decoration: TextDecoration.lineThrough,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.red),
              onPressed: () {},
            ),
            right: AppResolutions.width(context) * 0.01,
            top: AppResolutions.width(context) * 0.01,
          ),
        ]),
      ),
    );
  }
}
