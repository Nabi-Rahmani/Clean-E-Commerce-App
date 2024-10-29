// ```dart
// import 'package:flutter/material.dart';

// class AppTheme {
//   // Light Theme Colors
//   static const Color lightPrimary = Color(0xFF6200EE);       // Deep Purple
//   static const Color lightOnPrimary = Color(0xFFFFFFFF);     // White
//   static const Color lightPrimaryContainer = Color(0xFFE8DEF8); // Light Purple
//   static const Color lightSecondary = Color(0xFF03DAC6);     // Teal
//   static const Color lightBackground = Color(0xFFF8F9FA);    // Almost White
//   static const Color lightSurface = Color(0xFFFFFFFF);       // Pure White
//   static const Color lightError = Color(0xFFB00020);         // Red
//   static const Color lightOnBackground = Color(0xFF1C1B1F);  // Almost Black
//   static const Color lightOnSurface = Color(0xFF1C1B1F);     // Almost Black
//   static const Color lightOutline = Color(0xFFE0E0E0);       // Light Grey

//   // Dark Theme Colors
//   static const Color darkPrimary = Color(0xFFBB86FC);       // Light Purple
//   static const Color darkOnPrimary = Color(0xFF000000);     // Black
//   static const Color darkPrimaryContainer = Color(0xFF3700B3); // Deep Purple
//   static const Color darkSecondary = Color(0xFF03DAC6);     // Teal
//   static const Color darkBackground = Color(0xFF121212);    // Material Dark
//   static const Color darkSurface = Color(0xFF1E1E1E);       // Slightly Lighter
//   static const Color darkError = Color(0xFFCF6679);         // Pink
//   static const Color darkOnBackground = Color(0xFFE1E1E1);  // Almost White
//   static const Color darkOnSurface = Color(0xFFE1E1E1);     // Almost White
//   static const Color darkOutline = Color(0xFF2C2C2C);       // Dark Grey

//   // Text Styles
//   static const TextStyle headlineLarge = TextStyle(
//     fontSize: 32,
//     fontWeight: FontWeight.bold,
//     letterSpacing: -1.0,
//   );

//   static const TextStyle headlineMedium = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w600,
//     letterSpacing: -0.5,
//   );

//   static const TextStyle titleLarge = TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.w600,
//     letterSpacing: 0,
//   );

//   static const TextStyle bodyLarge = TextStyle(
//     fontSize: 16,
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0.15,
//   );

//   static const TextStyle bodyMedium = TextStyle(
//     fontSize: 14,
//     fontWeight: FontWeight.normal,
//     letterSpacing: 0.25,
//   );

//   static final ThemeData lightTheme = ThemeData(
//     useMaterial3: true,
//     brightness: Brightness.light,
//     colorScheme: const ColorScheme.light(
//       primary: lightPrimary,
//       onPrimary: lightOnPrimary,
//       primaryContainer: lightPrimaryContainer,
//       secondary: lightSecondary,
//       surface: lightSurface,
//       error: lightError,
//       onSurface: lightOnSurface,
//     ),
//     scaffoldBackgroundColor: lightBackground,
//     cardColor: lightSurface,
//     dividerColor: lightOutline,
//     textTheme: TextTheme(
//       headlineLarge: headlineLarge.copyWith(color: lightOnBackground),
//       headlineMedium: headlineMedium.copyWith(color: lightOnBackground),
//       titleLarge: titleLarge.copyWith(color: lightOnBackground),
//       bodyLarge: bodyLarge.copyWith(color: lightOnBackground),
//       bodyMedium: bodyMedium.copyWith(color: lightOnBackground),
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: lightSurface,
//       foregroundColor: lightOnSurface,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     cardTheme: CardTheme(
//       color: lightSurface,
//       elevation: 1,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: lightSurface,
//       selectedItemColor: lightPrimary,
//       unselectedItemColor: lightOnBackground.withOpacity(0.6),
//       type: BottomNavigationBarType.fixed,
//       elevation: 0,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: lightPrimary,
//       foregroundColor: lightOnPrimary,
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: lightSurface,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: lightOutline),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: lightOutline),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: lightPrimary, width: 2),
//       ),
//     ),
//   );

//   static final ThemeData darkTheme = ThemeData(
//     useMaterial3: true,
//     brightness: Brightness.dark,
//     colorScheme: const ColorScheme.dark(
//       primary: darkPrimary,
//       onPrimary: darkOnPrimary,
//       primaryContainer: darkPrimaryContainer,
//       secondary: darkSecondary,
//       surface: darkSurface,
//       error: darkError,
//       onSurface: darkOnSurface,
//     ),
//     scaffoldBackgroundColor: darkBackground,
//     cardColor: darkSurface,
//     dividerColor: darkOutline,
//     textTheme: TextTheme(
//       headlineLarge: headlineLarge.copyWith(color: darkOnBackground),
//       headlineMedium: headlineMedium.copyWith(color: darkOnBackground),
//       titleLarge: titleLarge.copyWith(color: darkOnBackground),
//       bodyLarge: bodyLarge.copyWith(color: darkOnBackground),
//       bodyMedium: bodyMedium.copyWith(color: darkOnBackground),
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: darkSurface,
//       foregroundColor: darkOnSurface,
//       elevation: 0,
//       centerTitle: true,
//     ),
//     cardTheme: CardTheme(
//       color: darkSurface,
//       elevation: 1,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       backgroundColor: darkSurface,
//       selectedItemColor: darkPrimary,
//       unselectedItemColor: darkOnBackground.withOpacity(0.6),
//       type: BottomNavigationBarType.fixed,
//       elevation: 0,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: darkPrimary,
//       foregroundColor: darkOnPrimary,
//     ),
//     inputDecorationTheme: InputDecorationTheme(
//       filled: true,
//       fillColor: darkSurface,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: darkOutline),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: darkOutline),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(12),
//         borderSide: const BorderSide(color: darkPrimary, width: 2),
//       ),
//     ),
//   );
// }

//!

// class ThemeModel extends ChangeNotifier {
//   bool isDarkMode = false;

//   ThemeModel() {
//     _loadTheme();
//   }

//   ThemeMode get currentTheme => isDarkMode ? ThemeMode.dark : ThemeMode.light;

//   void toggleTheme() {
//     isDarkMode = !isDarkMode;
//     Hive.box('themeMode').put('isDarkMode', isDarkMode); // Save the setting
//     notifyListeners();
//   }

//   void _loadTheme() {
//     var box = Hive.box('themeMode');
//     isDarkMode = box.get('isDarkMode', defaultValue: false); // Load the setting
//   }
// }
import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme Colors (Papara Exact)
  static const Color lightPrimary = Color(0xFF00D215); // Papara's green
  static const Color lightOnPrimary = Color(0xFFFFFFFF); // Pure white
  static const Color lightBackground = Color(0xFFFAFAFA); // Very light grey
  static const Color lightSurface = Color(0xFFFFFFFF); // Pure white
  static const Color lightCard = Color(0xFFFFFFFF); // Pure white
  static const Color lightText = Color(0xFF000000); // Pure black
  static const Color lightTextSecondary =
      Color(0xFF9E9E9E); // Grey for secondary text
  static const Color lightBorder = Color(0xFFEFEFEF); // Very light grey border
  static const Color lightSuccess = Color(0xFF00D215); // Same as primary
  static const Color lightError = Color(0xFFFF3B30); // Red for errors

  // Dark Theme Colors (Papara Exact)
  static const Color darkPrimary = Color(0xFF00D215); // Same green
  static const Color darkOnPrimary = Color(0xFF000000); // Black
  static const Color darkBackground =
      Color(0xFF121212); // Papara's dark background
  static const Color darkSurface =
      Color(0xFF1D1D1D); // Slightly lighter than background
  static const Color darkCard = Color(0xFF242424); // Card background
  static const Color darkText = Color(0xFFFFFFFF); // Pure white
  static const Color darkTextSecondary =
      Color(0xFFAAAAAA); // Light grey for secondary
  static const Color darkBorder = Color(0xFF2C2C2C); // Dark border
  static const Color darkSuccess = Color(0xFF00D215); // Same as primary
  static const Color darkError = Color(0xFFFF453A); // Red for errors

  // Rest of your code remains exactly the same...
  // Just replace the color references above

  static const TextStyle displayLarge = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: lightPrimary,
      onPrimary: lightOnPrimary,
      surface: lightSurface,
      onSurface: lightText,
      secondary: lightPrimary,
      onSecondary: lightOnPrimary,
    ),
    scaffoldBackgroundColor: lightBackground,
    textTheme: TextTheme(
      displayLarge: displayLarge.copyWith(color: lightText),
      displayMedium: displayMedium.copyWith(color: lightText),
      titleLarge: titleLarge.copyWith(color: lightText),
      titleMedium: titleMedium.copyWith(color: lightText),
      bodyLarge: bodyLarge.copyWith(color: lightText),
      bodyMedium: bodyMedium.copyWith(color: lightTextSecondary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightSurface,
      foregroundColor: lightText,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: titleLarge.copyWith(color: lightText),
    ),
    cardTheme: CardTheme(
      color: lightCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: lightBorder),
      ),
      margin: const EdgeInsets.all(8),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimary,
        foregroundColor: lightOnPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: lightBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: lightBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: lightPrimary),
      ),
      contentPadding: const EdgeInsets.all(16),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightSurface,
      selectedItemColor: lightPrimary,
      unselectedItemColor: lightTextSecondary,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: darkPrimary,
      onPrimary: darkOnPrimary,
      surface: darkSurface,
      onSurface: darkText,
      secondary: darkPrimary,
      onSecondary: darkOnPrimary,
    ),
    scaffoldBackgroundColor: darkBackground,
    textTheme: TextTheme(
      displayLarge: displayLarge.copyWith(color: darkText),
      displayMedium: displayMedium.copyWith(color: darkText),
      titleLarge: titleLarge.copyWith(color: darkText),
      titleMedium: titleMedium.copyWith(color: darkText),
      bodyLarge: bodyLarge.copyWith(color: darkText),
      bodyMedium: bodyMedium.copyWith(color: darkTextSecondary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkSurface,
      foregroundColor: darkText,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: titleLarge.copyWith(color: darkText),
    ),
    cardTheme: CardTheme(
      color: darkCard,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: darkBorder),
      ),
      margin: const EdgeInsets.all(8),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkPrimary,
        foregroundColor: darkOnPrimary,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: darkSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: darkBorder),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: darkBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: darkPrimary),
      ),
      contentPadding: const EdgeInsets.all(16),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkSurface,
      selectedItemColor: darkPrimary,
      unselectedItemColor: darkTextSecondary,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),
  );
}
