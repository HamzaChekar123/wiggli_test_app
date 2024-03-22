import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

final toastificationConfig = ToastificationConfig(
  marginBuilder: (alignment) => const EdgeInsets.fromLTRB(
    0,
    16,
    0,
    110,
  ),
  alignment: Alignment.center,
  itemWidth: 440,
  animationDuration: const Duration(milliseconds: 450),
);
