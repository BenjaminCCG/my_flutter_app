/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:54:47
 * @LastEditTime: 2023-04-24 09:34:38
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\home.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/tabIndex/tabIndex.dart';
import 'package:my_flutter_app/views/tabInfo/index.dart';
import 'package:my_flutter_app/views/tabProfile/index.dart';
import 'package:my_flutter_app/views/tabSearch/index.dart';

List<Widget> tabViewList = [
  TabIndex(),
  TabSearch(),
  TabInfo(),
  TabProfile()
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
