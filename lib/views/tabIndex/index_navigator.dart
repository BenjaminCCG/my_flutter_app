/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 10:47:06
 * @LastEditTime: 2023-04-23 11:28:37
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\index_navigator.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/views/tabIndex/index_navigator_item.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList.map((item) => InkWell(
          onTap: () {
            item.onTap(context);
          },
          child: Column(
            children: [
              // Image.asset(item.imageUrl,width: 50,),
              CommonImage(item.imageUrl, width: 50,),
              Text(item.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))
            ],
          ),
        )).toList(),
      )
    );
  }
}