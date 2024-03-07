import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 192, 205, 252),
);

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 30, 70, 81));

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
  //   (value) =>
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primary,
              foregroundColor: kDarkColorScheme.onPrimary),
        ),
        // textTheme: ThemeData().textTheme.copyWith(
        //       titleLarge: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //         color: kDarkColorScheme.onSecondaryContainer,
        //       ),
        //     ),
        dropdownMenuTheme: DropdownMenuThemeData(
          textStyle:
              const TextStyle().copyWith(color: kDarkColorScheme.onPrimary),
        ),
      ),
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
        // textTheme: ThemeData().textTheme.copyWith(
        //       titleLarge: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 20,
        //           color: kColorScheme.onSecondaryContainer),
        //     ),
      ),
    ),
    // ),
  );
}
