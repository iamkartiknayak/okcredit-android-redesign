import 'package:flutter/material.dart';

import '../../constants.dart';
import './business_tile.dart';
import '../settings/setting_tile.dart';

class BusinessBottomSheet extends StatelessWidget {
  const BusinessBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Saved Businesses',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12.0),
          BusinessTile(
            isActive: true,
            imagePath: 'assets/images/user.png',
            businessName: 'Krishna Pearls & Jewellers',
            userName: 'Nikhil Kamat',
          ),
          Divider(color: kHighLightColor),
          BusinessTile(
            imagePath: 'assets/images/user2.png',
            businessName: 'YoUnion Mumbai',
            userName: 'Riya Kapoor',
          ),
          BusinessTile(
            imagePath: 'assets/images/user3.png',
            businessName: 'Urban Harware',
            userName: 'Tanmay Bhat',
          ),
          SettingTile(
            icon: Icons.add,
            title: 'Create New Business',
          )
        ],
      ),
    );
  }
}
