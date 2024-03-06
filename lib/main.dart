import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 192, 205, 252));

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        //   appBarTheme: AppBarTheme(
        //       backgroundColor: kColorScheme.onPrimaryContainer,
        //       foregroundColor: kColorScheme.primaryContainer),
        // ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primary,
              foregroundColor: kColorScheme.onPrimary),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kColorScheme.onSecondaryContainer),
            ),
      ),
    ),
  );
}
