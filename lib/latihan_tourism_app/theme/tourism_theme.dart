import 'package:design_ui_dengan_widget/latihan_tourism_app/style/tourism_colors.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/typography/tourism_text_style.dart';
import 'package:flutter/material.dart';

class TourismTheme {
  /// Getter Text Theme
  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: TourismTextStyle.displayLarge,
      displayMedium: TourismTextStyle.displayMedium,
      displaySmall: TourismTextStyle.displaySmall,
      bodyLarge: TourismTextStyle.bodyLargeBold,
      bodyMedium: TourismTextStyle.bodyLargeMedium,
      bodySmall: TourismTextStyle.bodyLargeRegular,
      headlineLarge: TourismTextStyle.headlineLarge,
      headlineMedium: TourismTextStyle.headlineMedium,
      headlineSmall: TourismTextStyle.headlineSmall,
      titleLarge: TourismTextStyle.titleLarge,
      titleMedium: TourismTextStyle.titleMedium,
      titleSmall: TourismTextStyle.titleSmall,
      labelLarge: TourismTextStyle.labelLarge,
      labelMedium: TourismTextStyle.labelMedium,
      labelSmall: TourismTextStyle.labelSmall,
    );
  }

  /// Getter App Bar Theme
  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      toolbarTextStyle: _textTheme.titleLarge,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
    );
  }

  /// Getter Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      colorSchemeSeed: TourismColors.blue.color,
      brightness: Brightness.light,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }

  /// Getter Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      colorSchemeSeed: TourismColors.blue.color,
      brightness: Brightness.dark,
      textTheme: _textTheme,
      useMaterial3: true,
      appBarTheme: _appBarTheme,
    );
  }
}
