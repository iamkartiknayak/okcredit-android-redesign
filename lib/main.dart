import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:redesign_okcredit/pages/settings/language.dart';
import 'package:redesign_okcredit/pages/settings/security.dart';

import './constants.dart';
import './model/data.dart';
import './bottom_navbar.dart';
import './pages/ledger/add_contact.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
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
        ),
        initialRoute: BottomNavbar.id,
        routes: {
          BottomNavbar.id: (context) => const BottomNavbar(),
          AddContactPage.id: (context) => const AddContactPage(),
          SecurityPage.id: (context) => const SecurityPage(),
          LanguagePage.id: (context) => const LanguagePage(),
        },
      ),
    );
  }
}
