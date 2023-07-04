import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../model/data.dart';
import '../custom_text_button.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DataModel>(
      builder: (context, value, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              const Text(
                'Filter',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5.0),
              const Divider(color: kHighLightColor),
              const Text(
                'Reminder Date',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12.0),
              SizedBox(
                height: 38.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.reminderDateFilter.length,
                  itemBuilder: (context, index) {
                    final isSelected = value.reminderDateFilter[index][1];
                    final title = value.reminderDateFilter[index][0];
                    return GestureDetector(
                      onTap: () => value.updateReminderFilter(index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.green.shade50
                              : Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(title),
                              isSelected
                                  ? const Padding(
                                      padding: EdgeInsets.only(left: 2.0),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.green,
                                        size: 20.0,
                                      ),
                                    )
                                  : const SizedBox.shrink()
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 15.0);
                  },
                ),
              ),
              const SizedBox(height: 25.0),
              const Text(
                'Sort By',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return RadioListTile(
                    contentPadding: const EdgeInsets.all(0),
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -2,
                    ),
                    value: value.sortByFilter[index],
                    groupValue: value.selectedSortByFilter,
                    title: Text(value.sortByFilter[index]),
                    onChanged: (p0) => value.updatesortByFilter(p0),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15.0,
                  );
                },
              ),
              const Divider(color: kHighLightColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    height: 35.0,
                    width: 80.0,
                    fontSize: 14.0,
                    onTap: () {
                      value.resetFilter();
                      Navigator.pop(context);
                    },
                    title: 'Cancel',
                    color: Colors.grey.shade800,
                  ),
                  CustomButton(
                    height: 35.0,
                    width: 80.0,
                    fontSize: 14.0,
                    onTap: () => Navigator.pop(context),
                    title: 'Apply',
                  ),
                ],
              ),
              const SizedBox(height: 10.0)
            ],
          ),
        );
      },
    );
  }
}
