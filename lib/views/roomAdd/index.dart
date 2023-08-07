/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 11:00:32
 * @LastEditTime: 2023-04-25 16:34:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\roomAdd\index.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/widgets/RoomApplicationItem.dart';
import 'package:my_flutter_app/widgets/commonFloatingButton.dart';
import 'package:my_flutter_app/widgets/commonFormItem.dart';
import 'package:my_flutter_app/widgets/commonImagePicker.dart';
import 'package:my_flutter_app/widgets/commonRadioFormItem.dart';
import 'package:my_flutter_app/widgets/commonSelectFormItem.dart';
import 'package:my_flutter_app/widgets/commonTitle.dart';

class RoomAddPage extends StatefulWidget {
  const RoomAddPage({super.key});

  @override
  State<RoomAddPage> createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  int _radioValue = 0;
  int _radioValue2 = 0;
  int _selectValue = 0;
  int _selectValue2 = 0;
  int _selectValue3 = 0;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingButton('提交', () {}),
      appBar: AppBar(
        title: Text('发布房源'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CommonTitle('房源信息'),
          CommonFormItem(
            label: '小区',
            contentBuilder: (context) {
              return Container(
                  child: GestureDetector(
                onTap: () {
                  Get.toNamed('/search');
                },
                behavior: HitTestBehavior.translucent,
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '请选择小区',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
              ));
            },
          ),
          CommonFormItem(
              label: '租金',
              suffixText: '元/月',
              hintText: '请输入组件',
              controller: TextEditingController()),
          CommonFormItem(
              label: '大小',
              suffixText: '平方米',
              hintText: '请输入房屋大小',
              controller: TextEditingController()),
          CommonRadioFormItem(
              label: '租赁方式',
              options: ['整租', '合租'],
              value: _radioValue,
              onChanged: (value) {
                setState(() {
                  _radioValue = value!;
                });
              }),
          CommonSelectFormItem(
              label: '户型',
              value: _selectValue,
              options: ['一室', '二室', '三室', '四室'],
              onChange: (value) {
                setState(() {
                  _selectValue = value!;
                });
              }),
          CommonSelectFormItem(
              label: '楼层',
              value: _selectValue2,
              options: ['高楼层', '中楼层', '低楼层'],
              onChange: (value) {
                setState(() {
                  _selectValue2 = value!;
                });
              }),
          CommonSelectFormItem(
              label: '朝向',
              value: _selectValue3,
              options: ['东', '南', '西', '北'],
              onChange: (value) {
                setState(() {
                  _selectValue3 = value!;
                });
              }),
          CommonRadioFormItem(
              label: '装修',
              options: ['精装', '简装'],
              value: _radioValue2,
              onChanged: (value) {
                setState(() {
                  _radioValue2 = value!;
                });
              }),
          CommonTitle('房屋图像'),
          CommonImagePicker(
            onChange: (value) {
              print(value);
            },
          ),
          
          CommonTitle('房屋标题'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: '请输入房屋标题',
                border: InputBorder.none
              ),
            ),
          ),
          CommonTitle('房屋配置'),
          RoomApplicance(),
          CommonTitle('房屋描述'),
           Container(
            margin: EdgeInsets.only(bottom: 100),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              maxLines: 10,
              controller: _textEditingController2,
              decoration: InputDecoration(
                hintText: '请输入房屋描述',
                border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }
}
