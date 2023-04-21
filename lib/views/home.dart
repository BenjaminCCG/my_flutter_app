/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:54:47
 * @LastEditTime: 2023-04-21 16:51:18
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\home.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/tabIndex.dart';
import 'package:my_flutter_app/widgets/pageContent.dart';

List<Widget> tabViewList = [
  TabIndex(),
  PageContent(
      content: Container(
        child: Text('搜索'),
      ),
      title: '搜索'),
  PageContent(
      content: Container(
        child: Text('咨询'),
      ),
      title: '咨询'),
  PageContent(
      content: Container(
        child: Text('我的'),
      ),
      title: '我的'),
];

List<BottomNavigationBarItem> barItemList = const [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: '首页',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: '搜索',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.info),
    label: '咨询',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_circle),
    label: '我的',
  )
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabViewList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: barItemList,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          // unselectedItemColor:Colors.black,
          // showUnselectedLabels: true
        ));
  }
}
