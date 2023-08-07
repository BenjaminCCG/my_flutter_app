/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 14:36:45
 * @LastEditTime: 2023-04-26 11:07:28
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\info\item_widget.dart
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/info/data.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/roomDetail');
        },
        child: Row(
          children: [
          CommonImage(data.imageUrl,width: 120,),
          SizedBox(width: 10,),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data.source),
                  Text(data.time),
                ],
              ),
            ],
          ))
        ]),
      ),
    );
  }
}
