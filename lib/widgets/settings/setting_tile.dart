import 'package:flutter/material.dart';

import '../../constants.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    this.icon,
    required this.title,
    this.subTitle,
    this.onTap,
    this.trailing,
    this.hideDivider = false,
    this.removeLPadding,
  });

  final IconData? icon;
  final dynamic title;
  final dynamic subTitle;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool? hideDivider;
  final bool? removeLPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 0.0,
          onTap: onTap,
          contentPadding: EdgeInsets.only(
            left: removeLPadding == true ? 0.0 : 10.0,
          ),
          leading: icon != null
              ? Icon(
                  icon,
                  color: kPrimaryColor,
                  size: 25.0,
                )
              : const SizedBox.shrink(),
          title: title is String
              ? Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                )
              : title,
          subtitle: subTitle is String
              ? Text(
                  subTitle!,
                  style: kSubTitleStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              : subTitle,
          trailing: trailing,
        ),
        hideDivider == true
            ? const SizedBox.shrink()
            : const Divider(
                color: kHighLightColor,
                height: 5,
              ),
      ],
    );
  }
}
