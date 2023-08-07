/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 13:45:16
 * @LastEditTime: 2023-04-25 14:30:03
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonSelectFormItem.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/commonFormItem.dart';
import 'package:my_flutter_app/widgets/commonPicker.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int?) onChange;
  const CommonSelectFormItem(
      {super.key,
      required this.label,
      required this.value,
      required this.options,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
        label: label,
        contentBuilder: (context) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              CommonPicker.showPicker(
                      context: context, options: options, value: value)
                  .then((selectedValue) {
                    print(selectedValue);
                if (value != selectedValue &&
                    selectedValue != null &&
                    onChange != null) {
                  onChange(selectedValue);
                }
              });
            },
            child: Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    options[value],
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          );
        });
  }
}
