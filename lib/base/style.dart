import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfilio/base/palette.dart';

final ThemeData themeData = ThemeData(
  primaryColor: Palette.primaryColor,
  primaryColorLight: Palette.primaryLightColor,
  backgroundColor: Palette.backgroundColor,
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
  inactiveTrackColor: Palette.primaryLightColor.withOpacity(0.1),
);
TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all(
      textTheme.button?.copyWith(
        color: Palette.white,
      ),
    ),
    foregroundColor: MaterialStateProperty.all(Palette.textColor),
  ),
);

final DialogTheme dialogTheme = DialogTheme(
  backgroundColor: Palette.backgroundColor,
  titleTextStyle: textTheme.headline6,
  contentTextStyle: textTheme.bodyText1,
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
  toolbarTextStyle: textTheme.bodyText2,
  titleTextStyle: textTheme.headline6,
);

const IconThemeData iconThemeData = IconThemeData(
  color: Palette.iconColor,
);

final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.montserrat(
    fontSize: 97,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
    color: Palette.textColor,
  ),
  headline2: GoogleFonts.montserrat(
    fontSize: 61,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: Palette.textColor,
  ),
  headline3: GoogleFonts.montserrat(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    color: Palette.textColor,
  ),
  headline4: GoogleFonts.montserrat(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Palette.textColor,
  ),
  headline5: GoogleFonts.montserrat(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Palette.textColor,
  ),
  headline6: GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Palette.textColor,
  ),
  subtitle1: GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Palette.textColor,
  ),
  subtitle2: GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Palette.textColor,
  ),
  bodyText1: GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: Palette.textColor,
  ),
  bodyText2: GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Palette.textColor,
  ),
  button: GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Palette.textColor,
  ),
  caption: GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: Palette.textColor,
  ),
  overline: GoogleFonts.openSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Palette.textColor,
  ),
);
