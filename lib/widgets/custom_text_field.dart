// import 'package:flutter/material.dart';

// import '../constants.dart';

// class CustomTextField extends StatelessWidget {
//   const CustomTextField({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Padding(
//           padding: EdgeInsets.only(left: 10.0),
//           child: Text(
//             'Name*',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//         TextField(
//           decoration: InputDecoration(
//             // contentPadding: EdgeInsets.all(0),
//             border: InputBorder.none,
//             prefixIcon: Icon(Icons.person),
//             hintText: 'Name',
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.label,
    required this.hintText,
    required this.prefixIcon,
    this.textInputType,
    this.suffixOptions,
    this.controller,
    this.inputFormat,
    this.textCapitalization,
    this.obscureText,
    this.onChanged,
    this.maxLength,
    this.focusNode,
    this.margin,
  });

  final String? label;
  final String hintText;
  final IconData prefixIcon;
  final TextInputType? textInputType;
  final Widget? suffixOptions;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormat;
  final TextCapitalization? textCapitalization;
  final bool? obscureText;
  final Function(String)? onChanged;
  final int? maxLength;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(
      builder: (context, value, child) {
        return Container(
          margin: margin ?? const EdgeInsets.only(bottom: 5.0),
          padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              label != null
                  ? Text(
                      label!,
                      style: kLabelStyle,
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 5.0),
              TextField(
                controller: controller,
                focusNode: focusNode,
                onChanged: onChanged,
                maxLength: maxLength,
                obscureText: obscureText ?? false,
                obscuringCharacter: '●',
                textCapitalization:
                    textCapitalization ?? TextCapitalization.none,
                inputFormatters: inputFormat,
                keyboardType: textInputType,
                style: kTextFieldStyle,
                decoration: InputDecoration(
                  counterText: '',
                  prefixIconConstraints:
                      const BoxConstraints(minWidth: 40, minHeight: 0),
                  suffixIconConstraints:
                      const BoxConstraints(minWidth: 40, minHeight: 0),
                  contentPadding: const EdgeInsets.all(0),
                  fillColor: kPrimaryColor,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: hintText,
                  hintStyle: const TextStyle(
                    color: Color(0xff757784),
                  ),
                  prefixIcon: Icon(
                    prefixIcon,
                    color: kPrimaryColor,
                  ),
                  suffix: suffixOptions,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
