/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 11:02:46
 * @LastEditTime: 2023-04-25 09:35:43
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\roomManage.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabSearch/dataList.dart';
import 'package:my_flutter_app/widgets/commonFloatingButton.dart';
import 'package:my_flutter_app/widgets/roomItem.dart';

class RoomManage extends StatelessWidget {
  const RoomManage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: CommonFloatingButton('发布房源', () {
          Get.toNamed('/addRoom');
        }),
        appBar: AppBar(
          title: Text('房屋管理'),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: '空置'),
              Tab(text: '已租'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(children: [
              ...dataList.map((item) => RoomItem(item)).toList(),
            ]),
            ListView(children: dataList.map((item) => RoomItem(item)).toList()),
          ],
        ),
      ),
    );
  }
}


