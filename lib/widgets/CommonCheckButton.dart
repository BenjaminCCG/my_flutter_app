/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 16:31:11
 * @LastEditTime: 2023-04-25 16:45:51
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\CommonCheckButton.dart
 */
import 'package:flutter/material.dart';

class CommonCheckButton extends StatelessWidget {
   bool isChecked;
   CommonCheckButton(this.isChecked,{super.key});

  @override
  Widget build(BuildContext context) {
    return isChecked?Icon(Icons.check_circle,color: Colors.green,):Icon(Icons.radio_button_unchecked,color: Colors.green);
  }
}