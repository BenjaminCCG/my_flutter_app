/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 10:44:55
 * @LastEditTime: 2023-04-24 10:59:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\setting.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_app/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {         
                CommonToast.showToast('退出登录');
              },
              child: Text('退出登录'))
        ],
      ),
    );
  }
}
