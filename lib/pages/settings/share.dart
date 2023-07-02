import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redesign_okcredit/widgets/custom_back_button.dart';
import 'package:redesign_okcredit/widgets/custom_text_button.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  static const id = '/sharePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              const CustomBackButton(title: 'Share'),
              const SizedBox(height: 45.0),
              Image.asset(
                'assets/images/share.png',
                width: 300,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Invite a new person',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Share OkCredit with your businessmen friends.',
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(height: 25.0),
              CustomButton(
                width: 220.0,
                icon: FontAwesomeIcons.whatsapp,
                title: 'Share as status',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
