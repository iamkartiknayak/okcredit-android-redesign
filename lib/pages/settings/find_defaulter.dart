import 'package:flutter/material.dart';
import 'package:redesign_okcredit/app_imports.dart';
import 'package:redesign_okcredit/widgets/custom_back_button.dart';

class FindDefaulterPage extends StatelessWidget {
  const FindDefaulterPage({super.key});

  static const id = '/findDefaulterPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            children: [
              CustomBackButton(title: 'Defaulters'),
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DefaulterCard extends StatelessWidget {
  const DefaulterCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: kHighLightColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 3.0),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
