import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        indent: 10.0,
        endIndent: 10.0,
        thickness: 1.5,
        color: Colors.green,
      ),
    );
  }
}
