/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 13:14:51
 * @LastEditTime: 2023-04-21 14:58:29
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\pageContent.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageContent extends StatelessWidget {
  final Widget content;
  final String title;
  const PageContent({super.key, required this.content, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: content,
    );
  }
}