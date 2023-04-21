/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 16:50:07
 * @LastEditTime: 2023-04-21 17:46:23
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\tabIndex.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:my_flutter_app/widgets/commonSwiper.dart';
class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tab Index'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            CommonSwiper(),
            Container(
              child: const Text('Tab Index'),
            ),
          
          ],
        ));
  }
}
