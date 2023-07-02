import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/add_contact/section_card.dart';

class AddContactPage extends StatelessWidget {
  const AddContactPage({super.key});

  static const id = '/addContactPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Consumer<DataModel>(
            builder: (context, value, child) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomBackButton(title: 'Add Contact'),
                    CustomButton(
                      onTap: () {},
                      icon: Icons.contacts,
                      title: 'Select Contact',
                    ),
                    const SizedBox(height: 25.0),
                    const Row(
                      children: [
                        CustomDivider(),
                        Text(
                          'OR',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomDivider(),
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    SectionCard(
                      children: [
                        const Text(
                          'Select Category',
                          style: kSectionHeaderStyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: const Text('Customer'),
                                value: 'Customer',
                                contentPadding: const EdgeInsets.all(0),
                                groupValue: value.selectedCustomerCategory,
                                onChanged: (p0) =>
                                    value.updateCustomerCategory(p0),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile(
                                contentPadding: const EdgeInsets.all(0),
                                title: const Text('Supplier'),
                                value: 'Supplier',
                                groupValue: value.selectedCustomerCategory,
                                onChanged: (p0) =>
                                    value.updateCustomerCategory(p0),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SectionCard(
                      children: [
                        Text(
                          '${value.selectedCustomerCategory} Details',
                          style: kSectionHeaderStyle,
                        ),
                        const SizedBox(height: 15.0),
                        const CustomTextField(
                          hintText: 'User name',
                          prefixIcon: Icons.person,
                          label: 'Name*',
                          textInputType: TextInputType.name,
                          maxLength: 20,
                        ),
                        const CustomTextField(
                          hintText: 'XXXXXXXXXX (Optional)',
                          prefixIcon: Icons.call,
                          label: 'Number',
                          textInputType: TextInputType.number,
                          maxLength: 10,
                        ),
                      ],
                    ),
                    CustomButton(
                      onTap: () {},
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10.0),
                      title: 'Confirm',
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
