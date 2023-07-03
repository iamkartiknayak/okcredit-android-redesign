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
    precacheImage(const AssetImage("assets/images/share.png"), context);
    precacheImage(const AssetImage("assets/images/update_number.png"), context);

    return ChangeNotifierProvider(
      create: (context) => DataModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kCustomThemeData,
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
