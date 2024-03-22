import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  final bool isActive;
  final String iconActivePath;

  const BottomNavigationBarIcon({
    super.key,
    required this.isActive,
    required this.iconActivePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: SvgPicture.asset(
        iconActivePath,
        height: 24.r,
        colorFilter: ColorFilter.mode(
          isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).colorScheme.onSecondary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
