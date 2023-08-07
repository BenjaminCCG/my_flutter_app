/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 15:09:01
 * @LastEditTime: 2023-04-26 13:59:21
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabSearch\index.dart
 */

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabSearch/dataList.dart';
import 'package:my_flutter_app/views/tabSearch/filterBar/filterDrawer.dart';
import 'package:my_flutter_app/views/tabSearch/filterBar/index.dart';
import 'package:my_flutter_app/widgets/roomItem.dart';
import 'package:my_flutter_app/widgets/searchBar/index.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({super.key});

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        actions: [
          Container()
        ],
        elevation: 0,
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
      body: Column(
        children: [
          Container(
            child: FilterBar(
              onChange: (result) {
                print(result);
              },)
          ),
          Expanded(
            child: ListView(
              children: dataList.map((item)=>RoomItem(item)).toList(),
            )
          
          )
        ],
      ),
    );
  }
}