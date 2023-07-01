import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    required this.onChanged,
    required this.value,
  });

  final Function(bool) onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Switch(
        onChanged: onChanged,
        value: value,
      ),
    );
  }
}
