/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 10:17:41
 * @LastEditTime: 2023-04-24 10:31:26
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\functionButtonItemWidget.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/tabProfile/functionButtonData.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class FunctionButtonItemWidget extends StatelessWidget {
  final FunctionButtonItem data;
  const FunctionButtonItemWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (data.onTapHandle != null) {
          data.onTapHandle!(context);
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(
          children: [
            CommonImage(
              data.imageUrl,
              width: 60,
            ),
            Text(data.title)
          ],
        ),
      ),
    );
  }
}
