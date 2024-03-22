import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';

const _primary = Color(0xff7C3AED);
const _primaryContainer = Color(0xffffffff);
const _secondary = Color(0xffa8cae6);
const _secondaryContainer = Color(0xff4c84ba);
const _tertiary = Color(0xfffbb321);
const _tertiaryContainer = Color(0xff70bdc9);
const _appBarColor = Color(0xffffffff);
const _error = Color(0xffb00020);
final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: _primary,
    primaryContainer: _primaryContainer,
    secondary: _secondary,
    secondaryContainer: _secondaryContainer,
    tertiary: _tertiary,
    tertiaryContainer: _tertiaryContainer,
    appBarColor: _appBarColor,
    error: _error,
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    outlinedButtonRadius: 12.0,
    inputDecoratorRadius: 12.0,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  fontFamily: FontFamily.inter,
);
