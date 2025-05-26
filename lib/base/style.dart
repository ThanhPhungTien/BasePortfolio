import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfilio/base/palette.dart';

final ThemeData themeData = ThemeData(
  primaryColor: Palette.primaryColor,
  primaryColorLight: Palette.primaryLightColor,
  iconTheme: iconThemeData,
  appBarTheme: appBarTheme,
  buttonTheme: buttonThemeData,
  disabledColor: Palette.disableColor,
  scaffoldBackgroundColor: Palette.backgroundColor,
  dialogTheme: dialogTheme,
  textTheme: textTheme,
  splashColor: Palette.primaryLightColor,
  textButtonTheme: textButtonThemeData,
  sliderTheme: sliderThemeData,
);
SliderThemeData sliderThemeData = SliderThemeData(
  thumbColor: Palette.primaryColor,
  overlayColor: Palette.primaryColor,
  activeTrackColor: Palette.primaryColor,
  inactiveTrackColor: Palette.primaryLightColor.withValues(alpha: 0.1),
);
TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: WidgetStateProperty.all(
      textTheme.labelLarge?.copyWith(
        color: Palette.white,
      ),
    ),
    foregroundColor: WidgetStateProperty.all(Palette.textColor),
  ),
);

final dialogTheme = DialogThemeData(
  backgroundColor: Palette.backgroundColor,
  titleTextStyle: textTheme.titleLarge,
  contentTextStyle: textTheme.bodyLarge,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
const ButtonThemeData buttonThemeData = ButtonThemeData(
  disabledColor: Palette.disableColor,
  buttonColor: Palette.primaryColor,
  textTheme: ButtonTextTheme.primary,
);

final AppBarTheme appBarTheme = AppBarTheme(
  elevation: 0,
  iconTheme: iconThemeData.copyWith(color: Palette.textColor),
  color: Palette.backgroundColor,
  centerTitle: true,
  actionsIconTheme: iconThemeData,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  toolbarTextStyle: textTheme.bodyMedium,
  titleTextStyle: textTheme.titleLarge,
);

const IconThemeData iconThemeData = IconThemeData(
  color: Palette.iconColor,
);

final TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.montserrat(
    fontSize: 97,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    color: Palette.textColor,
  ),
  displayMedium: GoogleFonts.montserrat(
    fontSize: 61,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: Palette.textColor,
  ),
  displaySmall: GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: Palette.textColor,
  ),
  headlineMedium: GoogleFonts.montserrat(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Palette.textColor,
  ),
  headlineSmall: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Palette.textColor,
  ),
  titleLarge: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Palette.textColor,
  ),
  titleMedium: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Palette.textColor,
  ),
  titleSmall: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Palette.textColor,
  ),
  bodyLarge: GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: Palette.textColor,
  ),
  bodyMedium: GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Palette.textColor,
  ),
  labelLarge: GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Palette.textColor,
  ),
  bodySmall: GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: Palette.textColor,
  ),
  labelSmall: GoogleFonts.openSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Palette.textColor,
  ),
);
