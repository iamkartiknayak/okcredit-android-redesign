import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:redesign_okcredit/constants.dart';
import 'package:redesign_okcredit/model/data.dart';
import 'package:redesign_okcredit/pages/settings/language.dart';
import 'package:redesign_okcredit/pages/settings/security.dart';

import '../widgets/settings/setting_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Consumer<DataModel>(
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 15.0),
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),
                        SizedBox(width: 15.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kartik Nayak',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '80XXXXXXXX',
                              style: TextStyle(
                                color: kSecondaryAccent,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Text(
                          'Edit',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(
                      color: kHighLightColor,
                      height: 3,
                      thickness: 2.0,
                    ),
                    SettingTile(
                      onTap: () {},
                      icon: Icons.add,
                      title: 'Create New Business',
                    ),
                    SettingTile(
                      onTap: () {},
                      icon: Icons.account_circle,
                      title: 'Account',
                      hideDivider: true,
                    ),
                    const Divider(
                      color: kHighLightColor,
                      height: 3,
                      thickness: 2.0,
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Expanded(
                      child: ListView(
                        children: [
                          SettingTile(
                            onTap: () {},
                            icon: Icons.stars,
                            title: 'OkCredit Subscription Plan',
                            subTitle:
                                'Unlimited SMS, Ad Free, Priority Customer Support',
                          ),
                          SettingTile(
                            onTap: () =>
                                Navigator.pushNamed(context, LanguagePage.id),
                            icon: Icons.translate,
                            title: 'Language',
                            subTitle: value.selectedLanguage,
                          ),
                          SettingTile(
                            onTap: () {},
                            icon: Icons.numbers,
                            title: 'Update Mobile Number',
                            subTitle: '80XXXXX46',
                          ),
                          SettingTile(
                            onTap: () {},
                            icon: Icons.cloud_done_rounded,
                            title: 'Backup',
                            subTitle: 'Sync info, recovery number',
                          ),
                          SettingTile(
                            onTap: () => Navigator.pushNamed(
                              context,
                              SecurityPage.id,
                            ),
                            icon: Icons.lock,
                            title: 'Security',
                            subTitle: 'App lock, PIN, password, sign out',
                          ),
                          SettingTile(
                            onTap: () {},
                            icon: Icons.help,
                            title: 'Help',
                            subTitle: 'FAQs, contact us, privacy policy',
                          ),
                          SettingTile(
                            onTap: () {},
                            icon: Icons.person_off,
                            title: 'Find Defaulter',
                          ),
                          SettingTile(
                            onTap: () {},
                            icon: Icons.share,
                            title: 'Share',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
