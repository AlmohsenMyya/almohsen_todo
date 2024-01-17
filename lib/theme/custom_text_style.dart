import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Label text style
  static get labelLargeDeeppurpleA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA400,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get labelLargeSecondaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSecondaryContainer_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.64),
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.6),
        fontSize: 16.fSize,
      );
  static get titleMediumDeeppurpleA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRedA4000c => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA4000c.withOpacity(0.56),
        fontSize: 16.fSize,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.6),
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer.withOpacity(1),
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
