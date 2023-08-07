/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 16:21:52
 * @LastEditTime: 2023-04-25 17:06:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\RoomApplicationItem.dart
 */

import 'package:flutter/material.dart';
import 'package:my_flutter_app/config.dart';
import 'package:my_flutter_app/widgets/CommonCheckButton.dart';

class RoomApplicationItem {
  final String title;
  final int iconPoint;
   bool isChecked;
   RoomApplicationItem(this.title, this.iconPoint, this.isChecked);
}

 List<RoomApplicationItem> _dataList = [
  RoomApplicationItem('衣柜', 0xe918, true),
  RoomApplicationItem('床1', 0xe918, false),
  RoomApplicationItem('衣柜1', 0xe918, false),
  RoomApplicationItem('床2', 0xe918, false),
  RoomApplicationItem('衣柜2', 0xe918, false),
  RoomApplicationItem('床3', 0xe918, false),
  RoomApplicationItem('衣柜3', 0xe918, false),
  RoomApplicationItem('床4', 0xe918, false),
  RoomApplicationItem('衣柜4', 0xe918, false),
];

class RoomApplicance extends StatefulWidget {
  ValueChanged<List<RoomApplicationItem>>? onChange;

  RoomApplicance({super.key, this.onChange});

  @override
  State<RoomApplicance> createState() => _RoomApplicanceState();
}

class _RoomApplicanceState extends State<RoomApplicance> {
  List<RoomApplicationItem> list = _dataList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        runSpacing: 30,
        children: list.map((item) => GestureDetector(
          onTap: () {
            setState(() {
              // list = list.map((i)=>i==item?RoomApplicationItem(item.title,item.iconPoint,!item.isChecked):i).toList();
              item.isChecked = !item.isChecked;
            });
            if(null!=widget.onChange)
              widget.onChange!(list);
            // onChange(list);
          },
          behavior: HitTestBehavior.translucent,
          child: Container(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              children: [
                Icon(IconData(item.iconPoint, fontFamily: Config.CommonIcon), size: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(item.title),
                ),
                CommonCheckButton(item.isChecked)
              ],
            ),
          ),
        )).toList()),
      
    );
  }
}
