import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app_wiggli/gen/assets.gen.dart';
import 'package:test_app_wiggli/theme/colors.dart';

import '../../core/presentation/widgets/custom_toast.dart';
import '../../home/presentation/widgets/cart_circle.dart';
import '../shared/providers.dart';

@RoutePage()
class CartPage extends HookConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final voucherController = useTextEditingController(text: "10845630872FK");
    final theme = Theme.of(context);
    final cartItems = ref.watch(cartItemsProvider);
    final cartItemsGrouped = groupBy(cartItems, (product) => product.id);
    final subTotal = useState<double>(
      cartItems.fold<double>(
        0,
        (previousValue, element) => previousValue + element.price,
      ),
    );
    const deliveryCost = 23.00;

    final voucherDiscount = useState<int>(15);
    final discountAmount =
        useState<double>(subTotal.value * (voucherDiscount.value / 100));

    final totalAmount = subTotal.value + deliveryCost - discountAmount.value;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onPrimary,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cart',
              style: theme.textTheme.bodyMedium?.copyWith(
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: cartItemsGrouped.keys.length,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: const Divider(),
              ),
              itemBuilder: (context, index) {
                final item = cartItemsGrouped.values.elementAt(index).first;
                final quantity =
                    cartItemsGrouped.values.elementAt(index).length;
                return Row(
                  children: [
                    Image.asset(
                      item.image,
                      height: 79.h,
                      width: 77.w,
                    ),
                    8.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            item.type,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${item.price} £',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox.square(
                                    dimension: 32.w,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          side: BorderSide(
                                            width: .5.r,
                                            color: const Color(0xFFF8FAFC),
                                          ),
                                        ),
                                      ),
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        final items = [
                                          ...ref.read(cartItemsProvider),
                                        ];
                                        items.remove(item);
                                        ref
                                            .read(cartItemsProvider.notifier)
                                            .update(
                                              (state) => items,
                                            );

                                        subTotal.value =
                                            subTotal.value - item.price;
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        size: 20.r,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.w,
                                    ),
                                    child: Text(
                                      quantity.toString(),
                                      style:
                                          theme.textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox.square(
                                    dimension: 32.w,
                                    child: IconButton(
                                      style: IconButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffFAF5FF),
                                      ),
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        final cartItems = ref
                                            .read(cartItemsProvider)
                                            .toList(growable: true);

                                        final quantity = cartItems
                                            .where(
                                              (element) => element == item,
                                            )
                                            .length;

                                        if (quantity < item.quantity) {
                                          cartItems.add(item);
                                          subTotal.value =
                                              subTotal.value + item.price;
                                        } else {
                                          showToast(
                                            context: context,
                                            message:
                                                "You can't add more than ${item.quantity} items",
                                          );
                                        }

                                        ref
                                            .read(cartItemsProvider.notifier)
                                            .update(
                                              (state) => cartItems,
                                            );
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        size: 20.r,
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            if (cartItems.isNotEmpty) ...[
              56.verticalSpace,
              Text(
                'Voucher Discount ',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: blackColor,
                ),
              ),
              7.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: blackColor,
                      ),
                      cursorColor: blackColor,
                      controller: voucherController,
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        hintText: 'Enter Voucher Code',
                        hintStyle: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: dividerColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(
                            color: dividerColor,
                          ),
                        ),
                        suffixIcon: Assets.icons.svg.success.svg(
                          height: 20.h,
                          width: 20.w,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Divider(
                  color: dividerColor,
                  thickness: 1.h,
                ),
              ),
              22.verticalSpace,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: lightGreyColor,
                        ),
                      ),
                      Text(
                        '${subTotal.value} £',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery cost',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: lightGreyColor,
                        ),
                      ),
                      Text(
                        '$deliveryCost £',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                  16.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Voucher Discount ',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: lightGreyColor,
                        ),
                      ),
                      Text(
                        '${voucherDiscount.value} % ',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: theme.colorScheme.error,
                        ),
                      ),
                    ],
                  ),
                  22.verticalSpace,
                  FDottedLine(
                    color: dividerColor,
                    width: 400.w,
                    space: 4,
                  ),
                  22.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.sp,
                          color: lightGreyColor,
                        ),
                      ),
                      Text(
                        '$totalAmount £',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 24.sp,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
            const Spacer(),
            SizedBox(
              height: 54.h,
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                onPressed: () {},
                child: const Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
