/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 11:12:01
 * @LastEditTime: 2023-04-25 13:22:49
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonFormItem.dart
 */
import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String label;
  final Widget Function(BuildContext context)? contentBuilder;
  final Widget? suffix;
  final String? suffixText;
  final String? hintText;
  final TextEditingController? controller;
  const CommonFormItem(
      {super.key,
      required this.label,
      this.contentBuilder,
      this.suffix,
      this.suffixText,
      this.hintText,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).dividerColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
              child: contentBuilder != null
                  ? contentBuilder!(context)
                  : TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                    )),
          if (suffix != null) suffix!,
          if (suffix == null && suffixText != null) Text(suffixText!),
        ],
      ),
    );
  }
}
