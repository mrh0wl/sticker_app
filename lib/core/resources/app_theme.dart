import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:natker_app/core/resources/app_colors.dart';

ThemeData appTheme() => ThemeData(
      // Main theme color
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.secondary,
      primaryColorLight: AppColors.primaryBackground,
      cardColor: AppColors.secondaryBackground,
      scaffoldBackgroundColor: const Color(0xFFFFF4E8),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        error: AppColors.error,
      ),
      cardTheme: CardTheme(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryBackground,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(
          color: AppColors.secondaryBackground,
        ),
        titleTextStyle: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w700,
          textStyle: _lightTextStyleHeadline1,
        ),
      ),

      // Button theme
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondaryBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55),
          ),
        ),
      ),

      // Text theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w700,
          textStyle: _lightTextStyleHeadline1,
        ),
        displayMedium: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w500,
          textStyle: _lightTextStyleHeadline2,
        ),
        displaySmall: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleHeadline1,
        ),
        headlineMedium: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleHeadline2,
        ),
        headlineSmall: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleHeadline1,
        ),
        titleLarge: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w500,
          textStyle: _lightTextStyleHeadline2,
        ),
        titleMedium: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w500,
          textStyle: _lightTextStyleHeadline1,
        ),
        titleSmall: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w500,
          textStyle: _lightTextStyleSubtitle2,
        ),
        bodyLarge: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleBodytext1,
        ),
        bodyMedium: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w300,
          textStyle: _lightTextStyleBodytext2,
        ),
        labelLarge: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w500,
          textStyle: _lightTextStyleHeadline1,
        ),
        bodySmall: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleHeadline1,
        ),
        labelSmall: GoogleFonts.varelaRound(
          fontWeight: FontWeight.w400,
          textStyle: _lightTextStyleHeadline1,
        ),
      ),

      // List Tile theme
      listTileTheme: const ListTileThemeData(
        selectedTileColor: Colors.black,
        selectedColor: Colors.white,
        textColor: Colors.black,
        dense: true,
      ),

      // Switch theme
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.black54;
          }
          return Colors.grey[400];
        }),
        thumbColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.selected)) Colors.black;
          return Colors.grey[300]!;
        }),
        overlayColor:
            MaterialStateColor.resolveWith((states) => Colors.transparent),
      ),

      // Dialog theme
      dialogTheme: DialogTheme(
        actionsPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

const TextStyle _lightTextStyleHeadline1 = TextStyle(
  fontSize: 22.0,
  color: AppColors.primaryText,
);
const TextStyle _lightTextStyleHeadline2 = TextStyle(
  fontSize: 22.0,
  color: AppColors.primaryText,
);
TextStyle _lightTextStyleSubtitle2 = TextStyle(
  fontSize: 14.0,
  color: AppColors.primaryText.withOpacity(0.5),
);
const TextStyle _lightTextStyleBodytext1 = TextStyle(
  fontSize: 16.0,
  color: AppColors.secondaryText,
  height: 1,
);
final TextStyle _lightTextStyleBodytext2 = TextStyle(
  fontSize: 16.0,
  color: AppColors.secondaryText.withOpacity(0.8),
  height: 1,
);
