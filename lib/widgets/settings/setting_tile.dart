import 'package:flutter/material.dart';

import '../../constants.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.icon,
    required this.title,
    this.subTitle,
    this.onTap,
    this.trailing,
    this.hideDivider = false,
  });

  final IconData icon;
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  final Widget? trailing;
  final bool? hideDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap ?? null,
          contentPadding: const EdgeInsets.only(left: 10.0),
          leading: Icon(
            icon,
            color: kPrimaryColor,
            size: 25.0,
          ),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: subTitle != null
              ? Text(
                  subTitle!,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              : null,
          trailing: trailing,
        ),
        hideDivider == true
            ? const SizedBox.shrink()
            : const Divider(
                color: kHighLightColor,
                height: 5,
              )
      ],
    );
  }
}
