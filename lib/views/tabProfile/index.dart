/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 09:32:27
 * @LastEditTime: 2023-04-26 16:02:02
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\index.dart
 */
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/info/index.dart';
import 'package:my_flutter_app/views/tabProfile/advertisement.dart';
import 'package:my_flutter_app/views/tabProfile/functionButton.dart';
import 'package:my_flutter_app/views/tabProfile/header.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    void getHttp() async {
      final response = await dio.get('https://dart.cn');
      print(response);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(
            showTitle: true,
          )
        ],
      ),
    );
  }
}
