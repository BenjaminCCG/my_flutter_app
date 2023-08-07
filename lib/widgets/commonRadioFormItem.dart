/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 13:24:32
 * @LastEditTime: 2023-04-25 13:38:35
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonRadioFormItem.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/commonFormItem.dart';

class CommonRadioFormItem extends StatelessWidget {
  final String label;
  final List<String> options;
  final int value;
  final ValueChanged<int?> onChanged;
  const CommonRadioFormItem(
      {super.key,
      required this.label,
      required this.options,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
      label: label,
      contentBuilder: (context) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              options.length,
               (index) =>Row(
                 children: [
                   Radio(value: index, groupValue: value, onChanged: onChanged),
                   Text(options[index])
                 ],
               )),
          ),
        );
      },
    );
  }
}
