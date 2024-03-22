import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../theme/colors.dart';
import '../../domain/filter_item.dart';

class FilterItemCard extends HookConsumerWidget {
  final FilterItem filterItem;
  final bool isSelected;

  const FilterItemCard(
    this.filterItem,
    this.isSelected,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final selectedFilter = useState<int>(0);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      height: 40.h,
      decoration: BoxDecoration(
        color: isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: isSelected
              ? theme.colorScheme.primary
              : dividerColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (filterItem.icon != null)
            SvgPicture.asset(
              filterItem.icon!,
              width: 18.w,
              height: 18.h,
              colorFilter: ColorFilter.mode(
                isSelected
                    ? Theme.of(context).colorScheme.onPrimary
                    : dividerColor,
                BlendMode.srcIn,
              ),
            )
          else
            const SizedBox(),
          if (filterItem.icon != null) 5.horizontalSpace,
          Text(
            filterItem.name,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: isSelected
                  ? theme.colorScheme.onPrimary
                  : blackColor,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
