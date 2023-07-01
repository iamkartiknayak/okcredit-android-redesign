import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';
import '../../widgets/custom_back_button.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  static const id = '/LanguagePage';

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
                  const CustomBackButton(title: 'Language'),
                  const SizedBox(height: 20.0),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: value.languageList.length,
                    itemBuilder: (context, index) {
                      final String language = value.languageList[index][0];
                      final bool isSelected = value.languageList[index][1];
                      return ListTile(
                        onTap: () => value.updateAppLanguage(language),
                        leading: Text(
                          language,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                        trailing: isSelected
                            ? const Icon(Icons.check, color: kPrimaryColor)
                            : null,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 10.0,
                        color: kHighLightColor,
                      );
                    },
                  ),
                  const Divider(
                    height: 10.0,
                    color: kHighLightColor,
                  ),
                  const SizedBox(height: 10.0),
                  const Text('Choose OkCredit App Language')
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
