import 'package:flutter/material.dart';

import '../../constants.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.color,
    required this.name,
    required this.amount,
    required this.remarks,
    required this.type,
    required this.date,
  });

  final int color;
  final String name;
  final String amount;
  final String remarks;
  final String type;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          visualDensity: const VisualDensity(horizontal: -2),
          leading: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Color(color),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                name[0],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text(
                  '₹$amount',
                  style: TextStyle(
                    color: remarks == 'ADVANCE' ? kPrimaryColor : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: amount),
                      TextSpan(
                        text: ' $type added on ',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400,
                        ),
                      ), // Credit | Payment
                      TextSpan(text: date),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                remarks,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        const Divider(
          color: kHighLightColor,
          height: 5,
        )
      ],
    );
  }
}
