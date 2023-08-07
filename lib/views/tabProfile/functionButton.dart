/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 10:13:15
 * @LastEditTime: 2023-04-24 10:21:14
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\functionButton.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/tabProfile/functionButtonData.dart';
import 'package:my_flutter_app/views/tabProfile/functionButtonItemWidget.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 1,
        runSpacing: 1,
        children: list.map((item) => Container(
          decoration: BoxDecoration(color: Colors.white),
          child: FunctionButtonItemWidget(item),
        )).toList(),
      ),
    );
  }
}