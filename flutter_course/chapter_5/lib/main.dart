import 'package:chapter_5/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: ThemeColors.whiteText,
          centerTitle: false,
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle().copyWith(
                color: kColorScheme.onSecondaryContainer,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(8),
        ),
        appBarTheme: const AppBarTheme().copyWith(
          centerTitle: false,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: const Expenses(),
    ),
  );
}

class ThemeColors {
  static Color primary = Colors.lightBlue[400]!;
  static Color whiteText = const Color.fromARGB(220, 255, 255, 255);
  static Color darkPrimary = Colors.blueGrey;
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: ThemeColors.primary,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: ThemeColors.darkPrimary,
);
