/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 09:35:15
 * @LastEditTime: 2023-04-25 09:35:18
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonFloatingButton.dart
 */

import 'package:flutter/material.dart';

class CommonFloatingButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const CommonFloatingButton(this.title, this.onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      child: FloatingActionButton(
          elevation: 0,
          onPressed: () {
           onTap();
          },
          child: Text(title)),
    );
  }
}