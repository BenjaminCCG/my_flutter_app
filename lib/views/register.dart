/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 15:53:55
 * @LastEditTime: 2023-04-21 16:04:36
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\register.dart
 */
/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 11:24:01
 * @LastEditTime: 2023-04-21 15:52:34
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\login.dart
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/widgets/pageContent.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return PageContent(
        content: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '请输入用户名',
                    // prefixIcon: Icon(Icons.person),
                  ),
                ),
                const TextField(
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                    ),
                    obscureText: true),
                const TextField(
                    decoration: InputDecoration(
                      labelText: '确认密码',
                      hintText: '请输入密码',
                    ),
                    obscureText: true),
                const SizedBox(height: 20),
                SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('注册'))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('已有账号'),
                    TextButton(
                        onPressed: () {
                          // Get.back();
                          Get.offNamed('/login');
                        },
                        child: Text(
                          '去登录',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        title: '注册');
  }
}
