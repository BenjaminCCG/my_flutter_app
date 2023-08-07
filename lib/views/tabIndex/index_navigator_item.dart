/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 10:38:28
 * @LastEditTime: 2023-04-23 10:42:09
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\index.navigator_item.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home_index_navigator_total.png',
      (BuildContext context) {
    Get.offNamed('/login');
  }),
  IndexNavigatorItem('合租', 'static/images/home_index_navigator_share.png',
      (BuildContext context) {
    Get.offNamed('/login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/home_index_navigator_map.png',
      (BuildContext context) {
    Get.offNamed('/login');
  }),
  IndexNavigatorItem('去出租', 'static/images/home_index_navigator_rent.png',
      (BuildContext context) {
    Get.offNamed('/login');
  }),
];
