/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 13:49:40
 * @LastEditTime: 2023-04-23 14:04:07
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\index_recommond_item.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/views/tabIndex/index_recommond_data.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class IndexRecommondItem extends StatelessWidget {
  final IndexRecommondData data;
  const IndexRecommondItem(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(data.navigaterUrl);
      },
      child: Container(
          decoration: const BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(5))),
          width: (MediaQuery.of(context).size.width - 10 * 3) / 2,
          padding: EdgeInsets.all(10),
          // height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Text(data.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),), 
              Text(data.subTitle,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500))]),
              CommonImage(
                data.imageUrl,
                width: 50,
              )
            ],
          )),
    );
  }
}
