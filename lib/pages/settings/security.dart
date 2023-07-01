import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/data.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/settings/setting_tile.dart';

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
                  const SizedBox(height: 20.0),
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

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.onChanged,
    required this.value,
  });

  final Function(bool) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Switch(
        onChanged: onChanged,
        value: value,
      ),
    );
  }
}
