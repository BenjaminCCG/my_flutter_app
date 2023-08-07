/*
 * @Author: ChangCheng
 * @Date: 2023-04-26 13:56:37
 * @LastEditTime: 2023-04-26 14:47:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabSearch\filterBar\filterDrawer.dart
 */

import 'package:flutter/material.dart';
import 'package:my_flutter_app/store/index.dart';
import 'package:my_flutter_app/views/tabSearch/filterBar/data.dart';
import 'package:my_flutter_app/widgets/commonTitle.dart';

class FilterDrawer extends StatefulWidget {
  const FilterDrawer({super.key});

  @override
  State<FilterDrawer> createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: SafeArea(
          child: ListView(
            children: [
              CommonTitle('户型'),
              FilterDrawerItem(
                list: roomTypeList,
                selectedIds: Store.selectIds,
                onChange: (value) {
                  setState(() {
                    if (Store.selectIds.contains(value)) {
                      Store.selectIds.remove(value);
                    } else {
                      Store.selectIds.add(value);
                    }
                  });
                },
              ),
              CommonTitle('朝向'),
              FilterDrawerItem(
                list: floorList,
                selectedIds: [],
                onChange: (value) {
                  setState(() {
                    if (Store.selectIds.contains(value)) {
                      Store.selectIds.remove(value);
                    } else {
                      Store.selectIds.add(value);
                    }
                  });
                },
              ),
              CommonTitle('楼层'),
              FilterDrawerItem(
                list: orientedList,
                selectedIds: [],
                onChange: (value) {
                  setState(() {
                    if (Store.selectIds.contains(value)) {
                      Store.selectIds.remove(value);
                    } else {
                      Store.selectIds.add(value);
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterDrawerItem extends StatelessWidget {
  final List<GeneralType> list;
  final List<String> selectedIds;
  final ValueChanged<String> onChange;
  const FilterDrawerItem({
    Key? key,
    required this.list,
    required this.selectedIds,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        children: list.map((item) {
          var isSelected = selectedIds.contains(item.id);
          return GestureDetector(
            onTap: () {
              onChange(item.id);
            },
            behavior: HitTestBehavior.translucent,
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                  color: isSelected ? Colors.green : Colors.white),
              child: Center(
                  child: Text(
                item.name,
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.green),
              )),
            ),
          );
        }).toList(),
      ),
    );
  }
}
