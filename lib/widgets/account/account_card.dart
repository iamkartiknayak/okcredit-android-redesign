import 'package:flutter/material.dart';

import '../../constants.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.accountType,
    required this.paymentType,
    required this.amount,
    required this.icon,
  });

  final IconData icon;
  final String accountType;
  final String paymentType;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: kHighLightColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: kPrimaryColor,
                size: 18.0,
              ),
              const SizedBox(width: 8.0),
              const Text('Net Balance'),
              const Spacer(),
              const Icon(
                Icons.chevron_right,
                color: kSecondaryAccent,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$accountType Khata',
                style: const TextStyle(
                  color: kSecondaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '₹$amount',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Icon(
                Icons.person,
                color: kPrimaryColor,
                size: 18.0,
              ),
              const SizedBox(width: 8.0),
              Text('2 $accountType'),
              const Spacer(),
              Text(paymentType == 'R' ? 'You Get' : 'You Give'),
            ],
          )
        ],
      ),
    );
  }
}
