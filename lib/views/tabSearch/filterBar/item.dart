/*
 * @Author: ChangCheng
 * @Date: 2023-04-26 13:20:14
 * @LastEditTime: 2023-04-26 13:24:01
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabSearch\filterBar\item.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Item extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function(BuildContext) onTap;
  const Item({super.key, required this.title, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color color = isActive ? Colors.green : Colors.black;
    return GestureDetector(
      onTap: (){
        if(null!=onTap) onTap(context);
      },
      child: Container(
        child: Row(
          children: [
            Text(title,style: TextStyle(fontSize: 18,color: color),),
            Icon(Icons.arrow_drop_down,size: 20,color: color,),
          ],
        
        ),
      ),
    );
  }
}
