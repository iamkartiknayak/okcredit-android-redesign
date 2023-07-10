import 'package:flutter/material.dart';

import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/settings/setting_tile.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  static const id = '/helpPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Help'),
              const SettingTile(
                icon: Icons.help,
                title: 'How to use OkCredit?',
              ),
              const SettingTile(
                icon: Icons.info,
                title: 'About OkCredit',
              ),
              const SettingTile(
                icon: Icons.lock,
                title: 'Privacy Policy & Security',
              ),
              const SettingTile(
                icon: Icons.gavel,
                title: 'Terms & Conditions',
              ),
              const Spacer(),
              CustomButton(
                icon: Icons.call,
                title: 'Call Customer Care',
                onTap: () {},
              ),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }
}
