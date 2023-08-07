/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 13:52:11
 * @LastEditTime: 2023-04-25 14:32:48
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonPicker.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var buttonStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

class CommonPicker {
  static Future<int?> showPicker(
      {required BuildContext context,
      required List<String> options,
      double height = 300,
      required int value}) {
    return showCupertinoModalPopup<int>(
      context: context,
      builder: (context) {
        var controller = FixedExtentScrollController(initialItem: value);
        return Container(
          color: Colors.grey,
          height: height,
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          '取消',
                          style: buttonStyle,
                        )),
                    TextButton(
                        onPressed: () {
                          // Get.back(result: value);
                          Get.back(result: controller.selectedItem);
                        },
                        child: Text('确定', style: buttonStyle)),
                  ],
                ),
              ),
              Expanded(
                  child: CupertinoPicker(
                scrollController: controller,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                itemExtent: 32,
                onSelectedItemChanged: (index) {
                  value = index;
                },
                children: options.map((e) => Text(e)).toList(),
              ))
            ],
          ),
        );
      },
    );
  }
}
