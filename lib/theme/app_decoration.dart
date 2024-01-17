import 'package:flutter/material.dart';
import 'package:almohsen_todoapp/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepPurpleA => BoxDecoration(
        color: appTheme.deepPurpleA400.withOpacity(0.05),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.05),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(0.1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder69 => BorderRadius.circular(
        69.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
