import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';
import '../../widgets/custom_back_button.dart';

class BusinessTypePage extends StatelessWidget {
  const BusinessTypePage({super.key});

  static const id = '/businessTypePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Consumer<DataModel>(
            builder: (context, value, child) {
              return Column(
                children: [
                  const CustomBackButton(title: 'Select Business Type'),
                  GridView.builder(
                    itemCount: value.businessTypes.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1 / 1.8,
                    ),
                    itemBuilder: (context, index) {
                      final String imageName = value.businessTypes[index][1];
                      final String title = value.businessTypes[index][0];
                      final bool isSelected = value.businessTypes[index][2];

                      return GestureDetector(
                        onTap: () {
                          value.updateBusinessType(title);
                          Navigator.pop(context);
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 60.0,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: kHighLightColor,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Image.asset(
                                  'assets/images/business_types/$imageName.png'),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              title,
                              style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: isSelected ? FontWeight.bold : null,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
