import 'package:flutter/material.dart';
import 'package:redesign_okcredit/constants.dart';

class LedgerPageHeader extends StatelessWidget {
  const LedgerPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'OkCredit',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
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
        const SizedBox(width: 20.0),
        const CircleAvatar(
          radius: 16.5,
          backgroundImage: AssetImage('assets/images/user.png'),
        )
      ],
    );
  }
}
