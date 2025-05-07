import 'package:flutter/material.dart';

class AppTheme {
  // Biến để kiểm tra theme hiện tại
  static bool isDarkMode = false;

  // Màu chính của ứng dụng
  static const Color _lightPrimaryColor = Color(0xFFE53935); // Đỏ
  static const Color _darkPrimaryColor = Color(0xFFFF5252); // Đỏ sáng hơn

  // Màu phụ của ứng dụng
  static const Color _lightAccentColor = Color(0xFFFFC107); // Vàng/Amber
  static const Color _darkAccentColor = Color(0xFFFFD54F); // Vàng/Amber sáng hơn

  // Màu nền
  static const Color _lightBackgroundColor = Color(0xFFFAFAFA);
  static const Color _darkBackgroundColor = Color(0xFF121212);

  // Màu nền thứ cấp
  static const Color _lightCardColor = Color(0xFFFFFFFF);
  static const Color _darkCardColor = Color(0xFF1E1E1E);

  // Màu text
  static const Color _lightTextColor = Color(0xFF212121);
  static const Color _darkTextColor = Color(0xFFEEEEEE);

  // Màu text phụ
  static const Color _lightTextSecondaryColor = Color(0xFF757575);
  static const Color _darkTextSecondaryColor = Color(0xFFB0B0B0);

  // Màu border, divider
  static const Color _lightDividerColor = Color(0xFFE0E0E0);
  static const Color _darkDividerColor = Color(0xFF424242);

  // Màu error
  static const Color _lightErrorColor = Color(0xFFD32F2F);
  static const Color _darkErrorColor = Color(0xFFEF5350);

  // Màu shadow
  static Color _lightShadowColor = Colors.black.withOpacity(0.1);
  static Color _darkShadowColor = Colors.black.withOpacity(0.3);

  // Màu overlay
  static Color _lightOverlayColor = Colors.black.withOpacity(0.2);
  static Color _darkOverlayColor = Colors.black.withOpacity(0.5);

  // Màu success
  static const Color _lightSuccessColor = Color(0xFF4CAF50);
  static const Color _darkSuccessColor = Color(0xFF66BB6A);

  // Màu Nhật Bản đặc trưng
  static const Color _lightJapanRedColor = Color(0xFFBC002D);
  static const Color _darkJapanRedColor = Color(0xFFD32F2F);

  static const Color _lightSakuraColor = Color(0xFFFFC0CB);
  static const Color _darkSakuraColor = Color(0xFFE91E63);

  static const Color _lightTatami = Color(0xFFD4BA6A);
  static const Color _darkTatami = Color(0xFFBFA055);

  static const Color _lightWashi = Color(0xFFF5F5DC);
  static const Color _darkWashi = Color(0xFF3E3E3E);

  // Social login colors
  static const Color googleColor = Color(0xFFDB4437);
  static const Color facebookColor = Color(0xFF3B5998);
  static const Color appleColor = Color(0xFF000000);
  
  // Gradient backgrounds
  static const List<Color> _lightGradientColors = [
    Color(0xFFFFF3E0),
    Color(0xFFFFCCBC),
  ];
  
  static const List<Color> _darkGradientColors = [
    Color(0xFF212121),
    Color(0xFF424242),
  ];

  // Màu nền đăng nhập
  static Color _lightLoginOverlayColor = Colors.black26;
  static Color _darkLoginOverlayColor = Colors.black54;

  // Style Text
  static const TextStyle _lightHeadlineTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: _lightTextColor,
  );
  
  static const TextStyle _darkHeadlineTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: _darkTextColor,
  );
  
  static const TextStyle _lightBodyTextStyle = TextStyle(
    fontSize: 16,
    color: _lightTextColor,
  );
  
  static const TextStyle _darkBodyTextStyle = TextStyle(
    fontSize: 16,
    color: _darkTextColor,
  );

  static const TextStyle _lightCaptionTextStyle = TextStyle(
    fontSize: 14,
    color: _lightTextSecondaryColor,
  );
  
  static const TextStyle _darkCaptionTextStyle = TextStyle(
    fontSize: 14,
    color: _darkTextSecondaryColor,
  );

  // Icon Theme Data
  static const IconThemeData _lightIconTheme = IconThemeData(
    color: _lightPrimaryColor,
  );
  
  static const IconThemeData _darkIconTheme = IconThemeData(
    color: _darkPrimaryColor,
  );

  // Button Theme
  static final ButtonStyle _lightElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: _lightPrimaryColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 5,
  );
  
  static final ButtonStyle _darkElevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: _darkPrimaryColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 8,
  );

  // Input Decoration Theme
  static final InputDecorationTheme _lightInputDecorationTheme = InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    labelStyle: const TextStyle(color: _lightTextSecondaryColor),
    hintStyle: TextStyle(color: _lightTextSecondaryColor.withOpacity(0.7)),
    prefixIconColor: _lightPrimaryColor,
    suffixIconColor: _lightTextSecondaryColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _lightDividerColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _lightPrimaryColor, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _lightDividerColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _lightErrorColor),
    ),
  );
  
  static final InputDecorationTheme _darkInputDecorationTheme = InputDecorationTheme(
    fillColor: _darkCardColor,
    filled: true,
    labelStyle: const TextStyle(color: _darkTextSecondaryColor),
    hintStyle: TextStyle(color: _darkTextSecondaryColor.withOpacity(0.7)),
    prefixIconColor: _darkPrimaryColor,
    suffixIconColor: _darkTextSecondaryColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _darkDividerColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _darkPrimaryColor, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _darkDividerColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: _darkErrorColor),
    ),
  );

  // Card Theme
  static final CardTheme _lightCardTheme = CardTheme(
    color: _lightCardColor,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    shadowColor: _lightShadowColor,
  );
  
  static final CardTheme _darkCardTheme = CardTheme(
    color: _darkCardColor,
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    shadowColor: _darkShadowColor,
  );

  // AppBar Theme
  static const AppBarTheme _lightAppBarTheme = AppBarTheme(
    color: _lightPrimaryColor,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
  
  static const AppBarTheme _darkAppBarTheme = AppBarTheme(
    color: _darkBackgroundColor,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: _darkTextColor),
    titleTextStyle: TextStyle(
      color: _darkTextColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  // Checkbox Theme
  static final CheckboxThemeData _lightCheckboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.selected)) {
        return _lightPrimaryColor;
      }
      return Colors.white;
    }),
    checkColor: MaterialStateProperty.all(Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    side: const BorderSide(color: _lightTextSecondaryColor),
  );
  
  static final CheckboxThemeData _darkCheckboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith<Color>((states) {
      if (states.contains(MaterialState.selected)) {
        return _darkPrimaryColor;
      }
      return _darkCardColor;
    }),
    checkColor: MaterialStateProperty.all(Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    side: const BorderSide(color: _darkTextSecondaryColor),
  );

  // Bottom Sheet Theme
  static final BottomSheetThemeData _lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: _lightCardColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
  );
  
  static final BottomSheetThemeData _darkBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: _darkCardColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
  );

  // Tab Bar Theme
  static final TabBarTheme _lightTabBarTheme = TabBarTheme(
    labelColor: _lightPrimaryColor,
    unselectedLabelColor: _lightTextSecondaryColor,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: _lightPrimaryColor,
    ),
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 14,
    ),
  );
  
  static final TabBarTheme _darkTabBarTheme = TabBarTheme(
    labelColor: _darkPrimaryColor,
    unselectedLabelColor: _darkTextSecondaryColor,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: _darkPrimaryColor,
    ),
    labelStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 14,
    ),
  );

  // --------- GETTER FUNCTIONS ---------

  // Getter cho Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: _lightPrimaryColor,
      primarySwatch: Colors.red,
      colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        secondary: _lightAccentColor,
        error: _lightErrorColor,
        background: _lightBackgroundColor,
        surface: _lightCardColor,
        onPrimary: Colors.white,
        onSecondary: _lightTextColor,
        onBackground: _lightTextColor,
        onSurface: _lightTextColor,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: _lightBackgroundColor,
      cardColor: _lightCardColor,
      dividerColor: _lightDividerColor,
      appBarTheme: _lightAppBarTheme,
      iconTheme: _lightIconTheme,
      textTheme: const TextTheme(
        displayLarge: _lightHeadlineTextStyle,
        bodyLarge: _lightBodyTextStyle,
        bodyMedium: _lightCaptionTextStyle,
      ),
      inputDecorationTheme: _lightInputDecorationTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: _lightElevatedButtonStyle,
      ),
      cardTheme: _lightCardTheme,
      checkboxTheme: _lightCheckboxTheme,
      bottomSheetTheme: _lightBottomSheetTheme,
      tabBarTheme: _lightTabBarTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  // Getter cho Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: _darkPrimaryColor,
      primarySwatch: Colors.red,
      colorScheme: const ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _darkAccentColor,
        error: _darkErrorColor,
        background: _darkBackgroundColor,
        surface: _darkCardColor,
        onPrimary: Colors.white,
        onSecondary: _darkTextColor,
        onBackground: _darkTextColor,
        onSurface: _darkTextColor,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: _darkBackgroundColor,
      cardColor: _darkCardColor,
      dividerColor: _darkDividerColor,
      appBarTheme: _darkAppBarTheme,
      iconTheme: _darkIconTheme,
      textTheme: const TextTheme(
        displayLarge: _darkHeadlineTextStyle,
        bodyLarge: _darkBodyTextStyle,
        bodyMedium: _darkCaptionTextStyle,
      ),
      inputDecorationTheme: _darkInputDecorationTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: _darkElevatedButtonStyle,
      ),
      cardTheme: _darkCardTheme,
      checkboxTheme: _darkCheckboxTheme,
      bottomSheetTheme: _darkBottomSheetTheme,
      tabBarTheme: _darkTabBarTheme,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  // Các getter cho màu sắc cụ thể
  static Color get primaryColor => isDarkMode ? _darkPrimaryColor : _lightPrimaryColor;
  static Color get accentColor => isDarkMode ? _darkAccentColor : _lightAccentColor;
  static Color get backgroundColor => isDarkMode ? _darkBackgroundColor : _lightBackgroundColor;
  static Color get cardColor => isDarkMode ? _darkCardColor : _lightCardColor;
  static Color get textColor => isDarkMode ? _darkTextColor : _lightTextColor;
  static Color get textSecondaryColor => isDarkMode ? _darkTextSecondaryColor : _lightTextSecondaryColor;
  static Color get dividerColor => isDarkMode ? _darkDividerColor : _lightDividerColor;
  static Color get errorColor => isDarkMode ? _darkErrorColor : _lightErrorColor;
  static Color get shadowColor => isDarkMode ? _darkShadowColor : _lightShadowColor;
  static Color get overlayColor => isDarkMode ? _darkOverlayColor : _lightOverlayColor;
  static Color get successColor => isDarkMode ? _darkSuccessColor : _lightSuccessColor;
  static Color get japanRedColor => isDarkMode ? _darkJapanRedColor : _lightJapanRedColor;
  static Color get sakuraColor => isDarkMode ? _darkSakuraColor : _lightSakuraColor;
  static Color get tatamiColor => isDarkMode ? _darkTatami : _lightTatami;
  static Color get washiColor => isDarkMode ? _darkWashi : _lightWashi;
  static List<Color> get gradientColors => isDarkMode ? _darkGradientColors : _lightGradientColors;
  static Color get loginOverlayColor => isDarkMode ? _darkLoginOverlayColor : _lightLoginOverlayColor;
  
  // Các getter cho styles
  static TextStyle get headlineTextStyle => isDarkMode ? _darkHeadlineTextStyle : _lightHeadlineTextStyle;
  static TextStyle get bodyTextStyle => isDarkMode ? _darkBodyTextStyle : _lightBodyTextStyle;
  static TextStyle get captionTextStyle => isDarkMode ? _darkCaptionTextStyle : _lightCaptionTextStyle;
  static ButtonStyle get elevatedButtonStyle => isDarkMode ? _darkElevatedButtonStyle : _lightElevatedButtonStyle;
  static InputDecorationTheme get inputDecorationTheme => isDarkMode ? _darkInputDecorationTheme : _lightInputDecorationTheme;
}

// Extensions để dễ sử dụng trong code
extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}

// Ví dụ sử dụng màu từ theme
// Container(
//   color: AppTheme.primaryColor,
//   // Hoặc
//   color: Theme.of(context).colorScheme.primary,
//   // Hoặc sử dụng extension
//   color: context.colorScheme.primary,
// )