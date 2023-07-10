import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/settings/setting_tile.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({super.key});

  static const id = '/backupPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Backup'),
              SettingTile(
                removeLPadding: true,
                title: const Row(
                  children: [
                    Icon(
                      Icons.backup,
                      color: kPrimaryColor,
                      size: 25.0,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Automatic Data Backup',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                subTitle: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Your data is auto-sync to cloud. You can login with the same number to access your data anytime.\nYou can also sync yourself.',
                        style: kSubTitleStyle,
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        'Last sync : 02 Jul 2023, 10:18PM',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      CustomButton(
                        title: 'Sync Now',
                        margin: const EdgeInsets.only(top: 12.0),
                        height: 35.0,
                        width: 110.0,
                        fontSize: 15.0,
                        onTap: () {},
                      ),
                      const SizedBox(height: 5.0)
                    ],
                  ),
                ),
              ),
              const SettingTile(
                removeLPadding: true,
                title: Row(
                  children: [
                    Icon(
                      Icons.mobile_friendly_outlined,
                      color: kPrimaryColor,
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Add Recovery Number',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                subTitle: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recover your account when you can\'t login from your RMN.',
                        style: kSubTitleStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
