import 'package:flutter/material.dart';

class SupplierTab extends StatelessWidget {
  const SupplierTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/images/supplier.png',
                width: 280.0,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Add all your supplier here and save time by easily recording sale/purchase done with them.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
