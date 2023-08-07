/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 14:17:42
 * @LastEditTime: 2023-04-23 14:41:19
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\info\index.dart
 */

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/views/tabIndex/info/data.dart';

import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;
  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: Text('最新咨询'),
            ),
          Column(
            children: dataList
                .map((item) => ItemWidget(
                      item,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
