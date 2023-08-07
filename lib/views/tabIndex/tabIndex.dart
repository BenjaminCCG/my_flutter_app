/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 16:50:07
 * @LastEditTime: 2023-04-24 09:22:17
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\tabIndex.dart
 */
import 'package:bruno/bruno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/index_navigator.dart';
import 'package:my_flutter_app/views/tabIndex/index_recommond.dart';
import 'package:my_flutter_app/views/tabIndex/info/index.dart';
import 'package:my_flutter_app/widgets/commonSwiper.dart';
import 'package:my_flutter_app/widgets/searchBar/index.dart';


class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SearchBar(
            showLocation: true,
            showMap: true,
            onSearch: () {
              Get.toNamed('/search');
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView(children: const [CommonSwiper(), IndexNavigator(), IndexRecommond(),Info(showTitle: true,)]));
  }
}
