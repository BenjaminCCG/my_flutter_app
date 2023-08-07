/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 11:03:42
 * @LastEditTime: 2023-04-25 11:06:36
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonTitle.dart
 */
import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  final String title;
  const CommonTitle(this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
    );
  }
}