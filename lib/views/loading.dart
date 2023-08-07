/*
 * @Author: ChangCheng
 * @Date: 2023-04-26 16:05:28
 * @LastEditTime: 2023-04-26 16:54:02
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\loading.dart
 */
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Get.offNamed('/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('static/images/sj.jpg'),
        fit: BoxFit.fill,
      )),
    ));
  }
}
