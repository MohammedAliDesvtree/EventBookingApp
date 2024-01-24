import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack90016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyLargeBluegray8000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80001.withOpacity(0.6),
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray60016 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001.withOpacity(0.65),
        fontSize: 16.fSize,
      );
  static get bodyLargeIndigoA20003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary16 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get bodyLargeff334a66 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF334A66),
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get bodyMediumCyanA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyanA400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray50002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50002,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyMediumGray9000115 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumIndigoA20003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 13.fSize,
      );
  static get bodyMediumIndigoA2000315 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 15.fSize,
      );
  static get bodyMediumIndigoA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumIndigoA70013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimary15 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary15_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.64),
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumRed40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red40001,
      );
  static get bodyMediumff060518 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF060518),
      );
  static get bodyMediumff110c26 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF110C26),
        fontSize: 15.fSize,
      );
  static get bodyMediumff3c3e56 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF3C3E56),
      );
  static get bodyMediumff5668ff => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF5668FF),
        fontSize: 15.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray50001,
      );
  static get bodySmallBluegray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodySmallBluegray80002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray80002,
      );
  static get bodySmallDeeppurple50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurple50,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_2 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
      );
  static get bodySmallffef635a => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFEF635A),
        fontSize: 10.fSize,
      );
  // Display text style
  static get displayMediumAirbnbCerealAppff00f8ff =>
      theme.textTheme.displayMedium!.airbnbCerealApp.copyWith(
        color: Color(0XFF00F8FF),
        fontWeight: FontWeight.w700,
      );
  static get displayMediumAirbnbCerealAppff5668ff =>
      theme.textTheme.displayMedium!.airbnbCerealApp.copyWith(
        color: Color(0XFF5668FF),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallBluegray80003 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.blueGray80003,
      );
  // Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallSFProDisplayBlack900 =>
      theme.textTheme.headlineSmall!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
      );
  // Label text style
  static get labelLargeGray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get labelLargeIndigoA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA700,
        fontSize: 12.fSize,
      );
  static get labelLargeIndigoA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA700,
      );
  static get labelMediumff000000 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelMediumff000000_1 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF000000),
      );
  // Title text style
  static get titleLargeOnError => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray50003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50003,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray9000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumIndigoA20003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigoA20003,
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProDisplayPrimary =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffef635a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFEF635A),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
}

extension on TextStyle {
  TextStyle get airbnbCerealApp {
    return copyWith(
      fontFamily: 'Airbnb Cereal App',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }
}
