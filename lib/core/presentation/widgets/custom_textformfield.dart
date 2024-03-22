import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app_wiggli/theme/colors.dart';

import '../../../gen/fonts.gen.dart';

class CustomTextFormField extends StatelessWidget {
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? enabled;
  final int? maxLines;
  final void Function(String)? onChanged;

  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.focusNode,
    this.controller,
    this.readOnly = false,
    this.textInputAction,
    this.keyboardType,
    this.enabled,
    this.onChanged,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      focusNode: focusNode,
      obscureText: obscureText,
      validator: validator,
      readOnly: readOnly,
      enabled: enabled,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: theme.textTheme.bodyMedium?.copyWith(
        fontFamily: FontFamily.inter,
        fontSize: 16.sp,
      ),
      decoration: InputDecoration(
        fillColor: greyColor,
        contentPadding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 20.w,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.primaryColor,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: greyColor,
            width: 1.2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: theme.textTheme.bodyMedium?.copyWith(
          color: Colors.grey,
          fontFamily: FontFamily.inter,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
