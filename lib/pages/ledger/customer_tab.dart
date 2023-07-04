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
              TransactionTile(
                color: 0xff5099f5,
                name: 'Sunaina Pai',
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
                name: 'Aryan Shah',
                amount: '2,850',
                remarks: 'ADVANCE',
                type: 'Payment',
                date: '2 Jun, 2023',
              ),
              TransactionTile(
                color: 0xff4cb6ac,
                name: 'Dhruv Nanda',
                amount: '800',
                remarks: 'ADVANCE',
                type: 'Payment',
                date: '28 Mar, 2023',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
