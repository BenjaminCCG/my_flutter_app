/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 13:11:32
 * @LastEditTime: 2023-04-21 13:18:34
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\notFound.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/widgets/pageContent.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContent(
      content: Container(
        child: Text('404'),
      ),
       title: '404');
  }
}