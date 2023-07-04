import 'package:flutter/material.dart';

import '../../widgets/custom_back_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  static const id = '/accountPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              CustomBackButton(title: 'AccountPage'),
            ],
          ),
        ),
      ),
    );
  }
}
