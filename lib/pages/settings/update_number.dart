import 'package:flutter/material.dart';
import 'package:redesign_okcredit/widgets/custom_back_button.dart';

import '../../widgets/custom_text_button.dart';

class UpdateNumberPage extends StatelessWidget {
  const UpdateNumberPage({super.key});

  static const id = '/updateNumberPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Update Number'),
              const SizedBox(height: 70.0),
              Image.asset(
                'assets/images/update_number.png',
                width: 300,
              ),
              const SizedBox(height: 30.0),
              const BulletPoint(
                text:
                    'Changing number will migrate all your data to the new number.',
              ),
              const BulletPoint(
                text: 'Make sure, you are able to reeive SMS on new number',
              ),
              const BulletPoint(
                text: 'An OTP will be send on 80XXXXXXX6 to verify the user.',
              ),
              const SizedBox(height: 25.0),
              CustomButton(
                width: 200.0,
                title: 'Verify Mobile',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8.0,
            width: 8.0,
            margin: const EdgeInsets.only(top: 6.0),
            decoration: const BoxDecoration(
              color: Color(0xff424242),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 5.0),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Make sure, you are able to recieve SMS on new number