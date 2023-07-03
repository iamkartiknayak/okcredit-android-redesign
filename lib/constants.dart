import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff1c863b);

const kSecondaryColor = Color(0xff212121);

const kHighLightColor = Color(0xffeef4ef);

const kSecondaryAccent = Color(0xff757784);

const kTextFieldStyle = TextStyle(
  fontSize: 14.5,
  fontWeight: FontWeight.w500,
  height: 1.4,
);

const kLabelStyle = TextStyle(
  color: Color(0xff757784),
  fontSize: 13.0,
  fontWeight: FontWeight.bold,
);

const kSectionHeaderStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
);

const kSubTitleStyle = TextStyle(
  color: Color(0xff757575),
  fontSize: 13.0,
  fontWeight: FontWeight.w500,
);

final kCustomThemeData = ThemeData(
  useMaterial3: true,
  // splashColor: Colors.transparent,
  // highlightColor: Colors.transparent,
  // splashFactory: NoSplash.splashFactory,
  colorScheme: const ColorScheme.light(primary: kPrimaryColor),
  iconTheme: const IconThemeData(color: kSecondaryColor),
  navigationBarTheme: NavigationBarThemeData(
    elevation: 10.0,
    height: 70.0,
    iconTheme: const MaterialStatePropertyAll(
      IconThemeData(color: kSecondaryColor),
    ),
    indicatorColor: const Color(0xff66bb6a),
    backgroundColor: Colors.grey.shade100,
    surfaceTintColor: Colors.white,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: kPrimaryColor,
    indicatorColor: kPrimaryColor,
    dividerColor: kHighLightColor,
    labelStyle: TextStyle(fontWeight: FontWeight.bold),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    prefixIconColor: Colors.grey,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
  ),
);
