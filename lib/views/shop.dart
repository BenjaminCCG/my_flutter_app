/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:55:53
 * @LastEditTime: 2023-04-21 14:51:43
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\shop.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  
  @override
  Widget build(BuildContext context) {
    final id = Get.parameters['id'];
    print(id);
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body:Container(
        child: Text('Shop $id' ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: const Icon(Icons.add),
      )
    );
  }
}