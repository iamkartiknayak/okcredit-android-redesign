import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import './app_imports.dart';

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
          ProfilePage.id: (context) => const ProfilePage(),
          BusinessTypePage.id: (context) => const BusinessTypePage(),
          BusinessCategoryPage.id: (context) => const BusinessCategoryPage(),
          AccountPage.id: (context) => const AccountPage(),
          SubscriptionPage.id: (context) => const SubscriptionPage(),
          LanguagePage.id: (context) => const LanguagePage(),
          UpdateNumberPage.id: (context) => const UpdateNumberPage(),
          BackupPage.id: (context) => const BackupPage(),
          HelpPage.id: (context) => const HelpPage(),
          SharePage.id: (context) => const SharePage(),
          FindDefaulterPage.id: (context) => const FindDefaulterPage(),
        },
      ),
    );
  }
}
