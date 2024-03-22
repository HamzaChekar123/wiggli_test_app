import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app_wiggli/product_details/domain/product_details.dart';

import '../../gen/assets.gen.dart';
import '../../home/presentation/widgets/cart_circle.dart';
import '../../theme/colors.dart';

@RoutePage()
class ProductDetailsPage extends StatefulHookConsumerWidget {
  final int productId;
  const ProductDetailsPage({required this.productId});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onPrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Product Details",
              style: theme.textTheme.bodyMedium?.copyWith(
                color: blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
        actions: const [
          CartCircle(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: backgroundColor,
              height: 350.h,
              width: double.infinity,
              child: Center(
                child: Assets.images.png.dualShock.image(
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.r),
                  topRight: Radius.circular(8.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Wireless Controller",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "924 £",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 24.sp,
                        ),
                      ),
                    ],
                  ),
                  4.verticalSpace,
                  Text(
                    "Sony",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: lightGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  17.verticalSpace,
                  Row(
                    children: [
                      Assets.icons.svg.start.svg(
                        width: 16.w,
                        height: 16.h,
                        fit: BoxFit.scaleDown,
                      ),
                      8.horizontalSpace,
                      Text(
                        "4.8",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: lightGreyColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                      12.horizontalSpace,
                      SizedBox(
                        height: 19.h,
                        child: VerticalDivider(
                          color: dividerVerticalColor,
                          thickness: 1,
                          width: 4.w,
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        "109 Reviews",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: lighttBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  18.verticalSpace,
                  Text(
                    "About this item",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "Feel physically responsive feedback to your in-game actions with dual actuators which replace traditional rumble motors. In your hands, these dynamic vibrations can simulate the feeling of everything from environments to the recoil of different weapons.Adaptive triggers** - Experience varying levels of force and tension as you interact with your in-game gear and environments. From pulling back an increasingly tight",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      height: 2,
                      wordSpacing: 1.5,
                      letterSpacing: 0.3,
                      color: lightGreyColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
