/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 15:18:59
 * @LastEditTime: 2023-04-23 15:58:25
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\roomItem.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/views/tabSearch/dataList.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';
import 'package:my_flutter_app/widgets/commonTag.dart';

class RoomItem extends StatelessWidget {
  final RoomListItemData data;
  const RoomItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.blue),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      // height: 100,
      child: Row(
        children: [
          CommonImage(
            data.imageUrl,
            width: 130,
          ),
          SizedBox(
            width: 10,),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(data.title,
                    style: TextStyle(overflow: TextOverflow.ellipsis,fontWeight: FontWeight.w600)),
                Text(data.subTitle),
                // Text(data.tags.join(' '),
                //     style: TextStyle(overflow: TextOverflow.ellipsis)),
                Wrap(
                  children: data.tags.map((item) => 
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: CommonTag(item),
                  )).toList(),
                ),
                Text(data.price.toString() + '元/每月',style:
                 TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.w600),)
              ]))
        ],
      ),
    );
  }
}
