/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 10:33:59
 * @LastEditTime: 2023-04-24 10:36:05
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\advertisement.dart
 */
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:CommonImage('http://via.placeholder.com/350x100',width: 100,)
    );
  }
}