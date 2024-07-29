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
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}

class ThemeColors {
  static Color primary = Colors.lightBlue[400]!;
  static Color whiteText = const Color.fromARGB(220, 255, 255, 255);
}

var kColorScheme = ColorScheme.fromSeed(
  seedColor: ThemeColors.primary,
);
