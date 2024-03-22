import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast({
  required BuildContext context,
  required String message,
  ToastificationType type = ToastificationType.info,
}) {
  toastification.show(
    context: context,
    title: Text(
      message,
    ),
    type: type,
    alignment: Alignment.topCenter,
    autoCloseDuration: const Duration(seconds: 2),
    style: ToastificationStyle.flat,
  );
}
