import 'package:flutter/material.dart';

import '../../widgets/ledger/transaction_tile.dart';

class CustomerTab extends StatelessWidget {
  const CustomerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const SizedBox(height: 20.0),
              // Image.asset(
              //   'assets/images/customer.png',
              //   width: 280.0,
              // ),
              // const SizedBox(height: 10.0),
              // const Text(
              //   'Start your digital ledger by adding a customer.',
              //   style: TextStyle(
              //     fontWeight: FontWeight.w500,
              //   ),
              //   textAlign: TextAlign.center,
              // ),

              // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
              // const int color = 0xff9675ce;
              // const String name = 'Karan Singh';
              // const String amount = '2,850';
              // const String type = 'Payment';
              // const String date = '22 Jun, 2023';
              // const String remarks = 'ADVANCE';
              // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
              // ***********************************

              TransactionTile(
                color: 0xff5099f5,
                name: 'Karan Singh',
                amount: '250',
                remarks: 'DUE',
                type: 'Payment',
                date: '1 July, 2023',
              ),
              TransactionTile(
                color: 0xff9675ce,
                name: 'Nitin Bargi',
                amount: '1,300',
                remarks: 'DUE',
                type: 'Payment',
                date: '17 Jun, 2023',
              ),
              TransactionTile(
                color: 0xff4dbd91,
                name: 'Nandan Shetty',
                amount: '2,850',
                remarks: 'ADVANCE',
                type: 'Payment',
                date: '2 Jun, 2023',
              ),
              TransactionTile(
                color: 0xff4cb6ac,
                name: 'Meghnath',
                amount: '800',
                remarks: 'ADVANCE',
                type: 'Payment',
                date: '28 Mar, 2023',
              ),

              // ****************************************

              // ListView.separated(
              //   itemCount: 3,
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   padding: const EdgeInsets.only(top: 10.0, bottom: 70.0),
              //   itemBuilder: (context, index) {
              //     return  TransactionTile();
              //   },
              //   separatorBuilder: (BuildContext context, int index) {
              //     return const Divider(
              //       color: kHighLightColor,
              //       height: 8,
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );

    // return ListView.separated(
    //   padding: const EdgeInsets.only(top: 10.0, bottom: 70.0),
    //   itemCount: 3,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return const TransactionTile();
    //   },
    //   separatorBuilder: (BuildContext context, int index) {
    //     return const Divider(
    //       color: kHighLightColor,
    //       height: 8,
    //     );
    //   },
    // );
  }
}
