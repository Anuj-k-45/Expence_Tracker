import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expence_tracker/widgets/expenses.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 63, 15, 173));

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();              //used to initialize the app atleast once
  // SystemChrome.setPreferredOrientations([                 //makes the app work in only upper orentation
  //   DeviceOrientation.portraitUp,
  // ]).then(
  //   (fn) {
      runApp(
        MaterialApp(
          darkTheme: ThemeData.dark().copyWith(
            // dark() no longer takes any arguments
            colorScheme: kDarkColorScheme,

            cardTheme: const CardTheme().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
            ),

            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          theme: ThemeData().copyWith(
            colorScheme: kColorScheme,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorScheme.onPrimaryContainer, //primary
              foregroundColor:
                  kColorScheme.primaryContainer, //primary se 4.5:1 lighter
            ),
            cardTheme: const CardTheme().copyWith(
              color: kColorScheme
                  .secondaryContainer, //secondary (darker than primary)
              margin: const EdgeInsets.symmetric(
                //secondary se 4.5:1 lighter
                horizontal: 16,
                vertical: 8,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 18,
                  ),
                ),
          ),
          themeMode: ThemeMode.system,
          home: const Expenses(),
        ),
      );
  //   },
  // );
}
