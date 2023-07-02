import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/data.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/settings/setting_tile.dart';
import '../../widgets/settings/custom_switch.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  static const id = '/securityPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Consumer<DataModel>(
            builder: (context, value, child) {
              return Column(
                children: [
                  const CustomBackButton(title: 'Security'),
                  SettingTile(
                    onTap: () {},
                    icon: Icons.lock,
                    title: 'Change Security PIN',
                  ),
                  SettingTile(
                    icon: Icons.phonelink_lock,
                    title: 'App Lock',
                    trailing: CustomSwitch(
                      onChanged: (p0) => value.toggleSwitch(SwitchType.appLock),
                      value: value.isAppLockEnabled,
                    ),
                  ),
                  SettingTile(
                    icon: Icons.credit_score,
                    title: 'Payment Password',
                    trailing: CustomSwitch(
                      onChanged: (p0) =>
                          value.toggleSwitch(SwitchType.paymentPassword),
                      value: value.isPaymentPasswordEnabled,
                    ),
                  ),
                  SettingTile(
                    icon: Icons.fingerprint,
                    title: 'Fingerprint Unlock',
                    trailing: CustomSwitch(
                      onChanged: (p0) =>
                          value.toggleSwitch(SwitchType.fingerPrint),
                      value: value.isFingerprintEnabled,
                    ),
                  ),
                  SettingTile(
                    onTap: () {},
                    icon: Icons.logout,
                    title: 'Sign out from all devices',
                  ),
                  SettingTile(
                    onTap: () {},
                    icon: Icons.power_settings_new,
                    title: 'Sign Out',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
