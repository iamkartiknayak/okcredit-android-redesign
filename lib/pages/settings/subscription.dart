import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/data.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/settings/subscription_card.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  static const id = '/subscriptionPage';

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
                  const CustomBackButton(title: 'Subscribe to Premium'),
                  SubscriptionCard(
                    color: Colors.orange,
                    headerIcon: Icons.stars,
                    title: 'Premium',
                    price: '₹75/MO',
                    bulletIcon: const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 20.0,
                    ),
                    bulletPoints: const [
                      'Ad Free',
                      'Unlimited SMS from OkCredit',
                      'Unlimited Business Accounts',
                      'Priority Customer Support',
                    ],
                    isActive: value.activePlan == 'Premium',
                  ),
                  SubscriptionCard(
                    color: const Color(0xff4d4d4d),
                    title: 'Basic',
                    price: 'FREE',
                    bulletIcon: Container(
                      height: 8.0,
                      width: 8.0,
                      margin: const EdgeInsets.only(left: 5.0),
                      decoration: const BoxDecoration(
                        color: Color(0xff4d4d4d),
                        shape: BoxShape.circle,
                      ),
                    ),
                    bulletPoints: const [
                      'Contains Ads',
                      'Send SMS from your phone (SIM)',
                      'Maximum 1 Business Account',
                    ],
                    isActive: value.activePlan == 'FREE',
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
