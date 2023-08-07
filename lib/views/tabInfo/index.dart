/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 14:55:27
 * @LastEditTime: 2023-04-24 09:24:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabInfo\index.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/info/index.dart';
import 'package:my_flutter_app/widgets/searchBar/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({super.key});

  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: SearchBar(
            onSearch: () {
              Get.toNamed('/search');
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Info(),
          Info(),
          Info()
        ],
      ),
    );
  }
}
