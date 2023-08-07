/*
 * @Author: ChangCheng
 * @Date: 2023-04-26 13:15:12
 * @LastEditTime: 2023-04-26 15:51:34
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabSearch\filterBar\index.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/views/tabSearch/filterBar/data.dart';
import 'package:my_flutter_app/views/tabSearch/filterBar/item.dart';
import 'package:my_flutter_app/widgets/commonPicker.dart';

class FilterBar extends StatefulWidget {
  final ValueChanged<FilterBarResult> onChange;
  const FilterBar({super.key, required this.onChange});

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;

  String id1 = '';
  String id2 = '';
  String id3 = '';
  List<String> id4 = [];

  _onChange1(context) {
    setState(() {
      isActive1 = !isActive1;
    });
    var result = CommonPicker.showPicker(
        context: context,
        options: areaList.map((e) => e.name).toList(),
        value: 0);

    result
        .then((value) => {
              setState(() {
                id1 = areaList[value as int].id;
              }),
              _onChange(context)
            })
        .whenComplete(() => setState(() {
              isActive1 = !isActive1;
            }));
  }

  _onChange2(context) {
    setState(() {
      isActive2 = !isActive2;
    });
    var result = CommonPicker.showPicker(
        context: context,
        options: rentTypeList.map((e) => e.name).toList(),
        value: 0);

    result
        .then((value) => {
              setState(() {
                id1 = rentTypeList[value as int].id;
              }),
              _onChange(context)
            })
        .whenComplete(() => setState(() {
              isActive2 = !isActive2;
            }));
  }

  _onChange3(context) {
    setState(() {
      isActive3 = !isActive3;
    });
    var result = CommonPicker.showPicker(
        context: context,
        options: priceList.map((e) => e.name).toList(),
        value: 0);

    result
        .then((value) => {
              setState(() {
                id1 = priceList[value as int].id;
              }),
              _onChange(context)
            })
        .whenComplete(() => setState(() {
              isActive3 = !isActive3;
            }));
  }

  _onChange4(context) {
    Scaffold.of(context).openEndDrawer();
  }

  _onChange(context) {
    if (widget.onChange != null) {
      widget.onChange(FilterBarResult(
          areaId: id1, priceId: id2, rentTypeId: id3, moreIds: id4));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Item(title: '区域', isActive: isActive1, onTap: _onChange1),
          Item(title: '方式', isActive: isActive2, onTap: _onChange2),
          Item(title: '租金', isActive: isActive3, onTap: _onChange3),
          Item(title: '筛选', isActive: isActive4, onTap: _onChange4)
        ],
      ),
    );
  }
}
