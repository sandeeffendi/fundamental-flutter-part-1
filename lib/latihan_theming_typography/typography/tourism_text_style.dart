import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TourismTextStyle {
  static final TextStyle _myTextStyle = GoogleFonts.poppins();

  /// Display large
  static TextStyle displayLarge = _myTextStyle.copyWith(
    fontSize: 57,
    fontWeight: FontWeight.w700,
  );

  /// Display Medium
  static TextStyle displayMedium = _myTextStyle.copyWith(
    fontSize: 45,
    fontWeight: FontWeight.w600,
  );

  /// Display small
  static TextStyle displaySmall = _myTextStyle.copyWith(
    fontSize: 36,
    fontWeight: FontWeight.w500,
  );

  /// Headline large
  static TextStyle headlineLarge = _myTextStyle.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );

  /// Headline medium
  static TextStyle headlineMedium = _myTextStyle.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );

  /// Headline small
  static TextStyle headlineSmall = _myTextStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  /// Title large
  static TextStyle titleLarge = _myTextStyle.copyWith(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  /// Title medium
  static TextStyle titleMedium = _myTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Title small
  static TextStyle titleSmall = _myTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  /// Body large bold
  static TextStyle bodyLargeBold = _myTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Body large medium
  static TextStyle bodyLargeMedium = _myTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  /// Body large regular
  static TextStyle bodyLargeRegular = _myTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w200,
  );

  /// Label large
  static TextStyle labelLarge = _myTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  /// Label medium
  static TextStyle labelMedium = _myTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w200,
  );

  /// Label small
  static TextStyle labelSmall = _myTextStyle.copyWith(
    fontSize: 11,
    fontWeight: FontWeight.w100,
  );
}
