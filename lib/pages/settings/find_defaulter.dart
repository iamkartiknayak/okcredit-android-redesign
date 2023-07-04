import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/find_defaulter/defaulter_card.dart';
import '../../widgets/find_defaulter/defaulter_info_tile.dart';

class FindDefaulterPage extends StatelessWidget {
  const FindDefaulterPage({super.key});

  static const id = '/findDefaulterPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Defaulters'),
              const Row(
                children: [
                  DefaulterCard(
                    title: 'Udhaar Due',
                    subtitle: '₹0',
                  ),
                  DefaulterCard(
                    title: '#Defaulters',
                    subtitle: '0',
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Container(
                decoration: BoxDecoration(
                  color: kHighLightColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: const Column(
                  children: [
                    DefaulterInfoTile(
                      imagePath: 'assets/images/star.png',
                      contentMap: {
                        '2.65 lakh ': TextStyle(fontWeight: FontWeight.bold),
                        'merchants have marked ': null,
                        '18 lakh ': TextStyle(fontWeight: FontWeight.bold),
                        'customers as defaulter.': null,
                      },
                    ),
                    DefaulterInfoTile(
                      imagePath: 'assets/images/rupee.png',
                      contentMap: {
                        'Merchants marking defaulters on OkCredit are saving ':
                            null,
                        '₹12000 monthly.':
                            TextStyle(fontWeight: FontWeight.bold),
                      },
                    ),
                    DefaulterInfoTile(
                      hasDivider: false,
                      imagePath: 'assets/images/defaulter.png',
                      contentMap: {
                        'Start adding your customers to ': null,
                        'defaulters list and save ':
                            TextStyle(fontWeight: FontWeight.bold),
                        'your hard earned money.': null,
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              const Text('For any related to defaulter feature'),
              const Text(
                'Reach is on WhatsApp',
                style: TextStyle(
                  color: kPrimaryColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              const Spacer(),
              CustomButton(
                onTap: () {},
                icon: Icons.add,
                title: 'Add new defaulter',
                color: Colors.red,
              ),
              const SizedBox(height: 10.0)
            ],
          ),
        ),
      ),
    );
  }
}
