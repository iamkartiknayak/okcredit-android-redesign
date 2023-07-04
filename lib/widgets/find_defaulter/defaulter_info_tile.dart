import 'package:flutter/material.dart';

class DefaulterInfoTile extends StatelessWidget {
  const DefaulterInfoTile({
    super.key,
    required this.imagePath,
    required this.contentMap,
    this.hasDivider,
  });

  final String imagePath;
  final Map<String, dynamic> contentMap;
  final bool? hasDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 70),
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 40.0,
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: 15.0,
                    ),
                    children: [
                      for (final content in contentMap.entries)
                        TextSpan(
                          text: content.key,
                          style: content.value,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        hasDivider != false
            ? const Divider(
                height: 0.0,
                color: Colors.white,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
