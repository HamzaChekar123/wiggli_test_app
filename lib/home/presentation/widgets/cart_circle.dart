import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../cart/shared/providers.dart';
import '../../../core/presentation/routes/app_router.gr.dart';
import '../../../gen/assets.gen.dart';
import '../../../theme/colors.dart';

class CartCircle extends HookConsumerWidget {
  const CartCircle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItem = ref.watch(cartItemsProvider);
    final theme = Theme.of(context);
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: greyColor,
      ),
      onPressed: () => context.router.push(const CartRoute()),
      icon: Stack(
        children: [
          if (cartItem.isNotEmpty)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2.r, vertical: 2.r),
                width: 8.r,
                height: 8.r,
                decoration: BoxDecoration(
                  color: theme.colorScheme.error,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          Assets.icons.svg.cart.svg(
            width: 18.w,
            height: 18.h,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}
