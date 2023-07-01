import 'package:flutter/material.dart';
import 'package:redesign_okcredit/constants.dart';

class CustomerTab extends StatelessWidget {
  const CustomerTab({super.key});

  // final int color;
  // final String name;
  // final String amount;
  // final String type;
  // final String date;
  // final String remarks;

  @override
  Widget build(BuildContext context) {
    const int color = 0xff9675ce;
    const String name = 'Karan Singh';
    const String amount = '2,850';
    const String type = 'Payment';
    const String date = '22 Jun, 2023';
    const String remarks = 'ADVANCE';
    return ListView.separated(
      padding: const EdgeInsets.only(top: 10.0, bottom: 70.0),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(0.0),
          visualDensity: const VisualDensity(horizontal: -2),
          leading: Container(
            height: 45.0,
            width: 45.0,
            decoration: const BoxDecoration(
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
          title: const Padding(
            padding: EdgeInsets.only(bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500),
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
                      const TextSpan(text: amount),
                      TextSpan(
                        text: ' $type added on ',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400,
                        ),
                      ), // Credit | Payment
                      const TextSpan(text: date),
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
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: kHighLightColor,
          // color: Colors.white,
          height: 8,
        );
      },
    );
  }
}
