import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './model/data.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  static const id = '/bottomNavbar';

  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(
      builder: (context, value, child) {
        return Scaffold(
          body: value.navigationOptions[value.currentIndex],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: NavigationBar(
              selectedIndex: value.currentIndex,
              onDestinationSelected: value.updateCurrentIndex,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.book_outlined),
                  selectedIcon: Icon(Icons.book),
                  label: 'Ledger',
                ),
                NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
