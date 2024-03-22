import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app_wiggli/core/presentation/widgets/custom_toast.dart';
import 'package:toastification/toastification.dart';

import '../../../cart/shared/providers.dart';
import '../../../gen/assets.gen.dart';
import '../../../theme/colors.dart';
import '../../domain/product.dart';

class ProductCardItem extends StatelessWidget {
  final Product product;
  final int index;
  const ProductCardItem(this.product, this.index);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 299.h,
      width: 198.w,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!,
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            5.verticalSpace,
            Center(
              child: SizedBox(
                width: 186.w,
                height: 176.h,
                child: ColoredBox(
                  color: greyColor,
                  child: Center(
                    child: Image.asset(
                      product.image,
                      height: 152.h,
                      width: 136.w,
                    ),
                  ),
                ),
              ),
            ),
            10.verticalSpace,
            Center(
              child: SizedBox(
                width: 186.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    product.name,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 186.w,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  product.type,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: lightGreyColor,
                  ),
                ),
              ),
            ),
            15.verticalSpace,
            SizedBox(
              width: 186.w,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Row(
                  children: [
                    Text(
                      "${product.price} £",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        color: blackColor,
                      ),
                    ),
                    const Spacer(),
                    Consumer(
                      builder: (context, ref, child) {
                        return GestureDetector(
                          onTap: () {
                            final cartItems = ref
                                .read(cartItemsProvider)
                                .toList(growable: true);

                            if (cartItems.contains(product)) {
                              final quantity = cartItems
                                  .where((element) => element == product)
                                  .length;

                              if (quantity < product.quantity) {
                                cartItems.add(product);
                                showToast(
                                  context: context,
                                  message: "${product.name} added to cart",
                                  type: ToastificationType.success,
                                );
                              } else {
                                showToast(
                                  context: context,
                                  message:
                                      "You can't add more than ${product.quantity} items",
                                );
                              }
                            } else {
                              cartItems.add(product);
                              showToast(
                                context: context,
                                message: "${product.name} added to cart",
                                type: ToastificationType.success,
                              );
                            }
                            ref.read(cartItemsProvider.notifier).update(
                                  (state) => cartItems,
                                );
                          },
                          child: CircleAvatar(
                            radius: 17.r,
                            backgroundColor: greyColor,
                            child: Center(child: Assets.icons.svg.plus.svg()),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
