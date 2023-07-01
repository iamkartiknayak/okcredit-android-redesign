import 'package:flutter/material.dart';
import 'package:redesign_okcredit/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
    this.padding,
    this.width,
    this.height,
    this.fontSize,
    this.icon,
    this.radius,
  });

  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final double? fontSize;
  final IconData? icon;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? kPrimaryColor,
          minimumSize: Size(width ?? double.infinity, height ?? 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 15.0),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null
                ? Icon(
                    icon,
                    color: Colors.white,
                  )
                : const SizedBox.shrink(),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize ?? 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
