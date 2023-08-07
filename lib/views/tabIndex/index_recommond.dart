/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 13:34:04
 * @LastEditTime: 2023-04-23 13:58:12
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\index_recommond.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/views/tabIndex/index_recommond_data.dart';
import 'package:my_flutter_app/views/tabIndex/index_recommond_item.dart';

class IndexRecommond extends StatelessWidget {
  final List<IndexRecommondData>? dataList;
  const IndexRecommond({super.key, this.dataList = recommondData});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Color(0x08000000)),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '房屋推荐',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                Text(
                  '更多',
                  style: TextStyle(color: Colors.black54),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
                spacing: 10,
                runSpacing: 10,
                children:
                    dataList!.map((item) => IndexRecommondItem(item)).toList()),
          ],
        ));
  }
}
