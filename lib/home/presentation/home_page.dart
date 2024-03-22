import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../../core/presentation/routes/app_router.gr.dart';
import '../../core/presentation/widgets/custom_page_scaffold.dart';
import '../../core/presentation/widgets/custom_textformfield.dart';
import '../../gen/assets.gen.dart';
import '../../theme/colors.dart';
import '../shared/providers.dart';
import 'widgets/cart_circle.dart';
import 'widgets/filter_item_card.dart';
import 'widgets/product_card_item.dart';

@RoutePage()
class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    final theme = Theme.of(context);
    final selectedFilterItem = useState<int>(0);

    return CustomPageScaffold(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            47.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Ayoub",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                      ),
                    ),
                    5.verticalSpace,
                    Text(
                      "What are you buying today ?",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: lightGreyColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                const CartCircle(),
              ],
            ),
            14.verticalSpace,
            CustomTextFormField(
              controller: searchController,
              hintText: "Search  products",
              prefixIcon: Assets.icons.svg.search.svg(
                width: 18.w,
                height: 18.h,
                fit: BoxFit.scaleDown,
              ),
            ),
            20.verticalSpace,
            SizedBox(
              height: 40.h,
              child: Consumer(
                builder: (context, ref, child) {
                  final items = ref.watch(filterItemProvider);
                  return ListView.separated(
                    separatorBuilder: (context, index) => 20.horizontalSpace,
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];

                      return GestureDetector(
                        onTap: () {
                          selectedFilterItem.value = index;
                        },
                        child: FilterItemCard(
                            item, selectedFilterItem.value == index),
                      );
                    },
                  );
                },
              ),
            ),
            28.verticalSpace,
            Row(
              children: [
                Text(
                  "Trending sales",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            SizedBox(
              height: 300.h,
              child: Consumer(
                builder: (context, ref, child) {
                  final products = ref.watch(productsProvider);

                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => 20.verticalSpace,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () => context.router.push(
                          ProductDetailsRoute(productId: product.id),
                        ),
                        child: ProductCardItem(product, index),
                      );
                    },
                  );
                },
              ),
            ),
            28.verticalSpace,
            Row(
              children: [
                Text(
                  "New arrivals",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp,
                  ),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            SizedBox(
              height: 300.h,
              child: Consumer(
                builder: (context, ref, child) {
                  final products = ref.watch(productsProvider);

                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => 20.verticalSpace,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        onTap: () {
                          Logger().i("Product id: ${product.id}");
                          context.router.push(
                            ProductDetailsRoute(
                              productId: product.id,
                            ),
                          );
                        },
                        child: ProductCardItem(product, index),
                      );
                    },
                  );
                },
              ),
            ),
            40.horizontalSpace,
          ],
        ),
      ),
    );
  }
}
