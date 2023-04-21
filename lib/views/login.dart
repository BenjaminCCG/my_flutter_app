/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 11:24:01
 * @LastEditTime: 2023-04-21 16:27:31
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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                TextField(
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      // prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: Icon(showPassword
                              ? Icons.visibility_off
                              : Icons.visibility))),
                  obscureText: !showPassword,
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.offNamed('/home');
                        }, child: const Text('登录'))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('还没有账号？'),
                    TextButton(
                        onPressed: () {
                          // Get.toNamed('/register');
                          Get.offNamed('/register');
                        },
                        child: Text(
                          '去注册',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        title: '登录');
  }
}
