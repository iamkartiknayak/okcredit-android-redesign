import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../model/data.dart';
import 'ledger/customer_tab.dart';
import 'ledger/supplier_tab.dart';
import './ledger/add_contact.dart';
import '../widgets/ledger/header.dart';
import '../widgets/ledger/search_box.dart';
import '../widgets/ledger/filter_bottom_sheet.dart';

class LedgerPage extends StatelessWidget {
  const LedgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          elevation: 3.0,
          onPressed: () => Navigator.pushNamed(context, AddContactPage.id),
          icon: const Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          label: const Text(
            'Add Contact',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 15.0),
                const LedgerPageHeader(),
                const SizedBox(height: 20.0),
                const SearchBox(),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: TabBar(
                        tabs: context.read<DataModel>().tabs,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => showModalBottomSheet(
                        isDismissible: false,
                        context: context,
                        builder: (context) {
                          return const FilterBottomSheet();
                        },
                      ),
                      child: Container(
                        height: 30.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          color: kHighLightColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(Icons.sort),
                      ),
                    )
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      CustomerTab(),
                      SupplierTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
