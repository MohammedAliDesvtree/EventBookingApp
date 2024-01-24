import 'dart:ui';
import 'package:eventbookingapp/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillCyanA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyanA400.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillCyanATL5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyanA400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillIndigoA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA20002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillIndigoATL16 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA20003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillIndigoATL6 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA20003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToPrimaryDecoration => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0),
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
        shadowColor: appTheme.blueGray400,
        elevation: 1,
      );
  static ButtonStyle get outlineCyan => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA20003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
        shadowColor: appTheme.cyan30014,
        elevation: 8,
      );
  static ButtonStyle get outlineCyanTL14 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA20003,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
        shadowColor: appTheme.cyan30014,
        elevation: 8,
      );
  static ButtonStyle get outlineIndigoA => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.indigoA20003,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get outlineIndigoATL10 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.indigoA20003,
        side: BorderSide(
          color: appTheme.indigoA20003,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
