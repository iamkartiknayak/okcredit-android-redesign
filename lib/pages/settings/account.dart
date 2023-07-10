import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/account/account_card.dart';
import '../../widgets/settings/setting_tile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  static const id = '/accountPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Account'),
              const AccountCard(
                icon: Icons.book,
                accountType: 'Customer',
                paymentType: 'R',
                amount: '750',
              ),
              const AccountCard(
                icon: Icons.local_shipping_sharp,
                accountType: 'Supplier',
                paymentType: 'G',
                amount: '200',
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: kHighLightColor),
                ),
                child: const SettingTile(
                  icon: Icons.download,
                  title: 'Download Backup',
                  hideDivider: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
