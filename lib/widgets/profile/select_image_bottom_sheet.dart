import 'package:flutter/material.dart';

import 'bottom_sheet_button.dart';

class SelectImageBottomSheet extends StatelessWidget {
  const SelectImageBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile photo',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              BottomSheetButton(
                icon: Icons.camera_alt,
                title: 'Camera',
              ),
              SizedBox(width: 30.0),
              BottomSheetButton(
                icon: Icons.image,
                title: 'Gallery',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
