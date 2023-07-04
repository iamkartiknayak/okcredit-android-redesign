import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';
import './business_bottom_sheet.dart';
import '../../pages/settings/account.dart';

class LedgerPageHeader extends StatelessWidget {
  const LedgerPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 25.0,
            ),
            Consumer<DataModel>(
              builder: (context, value, child) {
                return value.activePlan == 'Premium'
                    ? Positioned(
                        top: -17,
                        child: Image.asset(
                          'assets/images/crown.png',
                          width: 23.0,
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ],
        ),
        const SizedBox(width: 1.0),
        const Text(
          'kCredit',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, AccountPage.id),
          child: Container(
            height: 35.0,
            width: 35.0,
            decoration: const BoxDecoration(
              color: kHighLightColor,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(Icons.account_balance_rounded),
            ),
          ),
        ),
        const SizedBox(width: 20.0),
        GestureDetector(
          onTap: () => showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            builder: (context) {
              return const BusinessBottomSheet();
            },
          ),
          child: const CircleAvatar(
            radius: 16.5,
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
        )
      ],
    );
  }
}
