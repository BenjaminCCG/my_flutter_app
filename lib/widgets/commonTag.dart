/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 15:42:19
 * @LastEditTime: 2023-04-23 15:56:05
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonTag.dart
 */
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color background;
  const CommonTag.orgin(this.title,{super.key,  this.color = Colors.black,  this.background = Colors.blue});

  factory CommonTag(String title){
    switch(title){
      case '青年之家':
        return CommonTag.orgin(title,color: Colors.red,background: Colors.red[50]!);
      default:
        return CommonTag.orgin(title,color: Colors.grey,background: Colors.grey[50]!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 2),
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('$title',style: TextStyle(color: color,fontSize: 10)),
    );
  }
}