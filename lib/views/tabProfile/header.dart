/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 09:47:11
 * @LastEditTime: 2023-04-24 10:04:35
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\header.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

var textStyle = TextStyle(fontSize: 14, color: Colors.white);

class Header extends StatelessWidget {
  Header({super.key});

  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      height: 95,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 65,
              height: 65,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    NetworkImage('http://via.placeholder.com/80x80'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.toNamed('/login');
                        },
                        child: Text(
                          '登录',
                          style: textStyle,
                        )),
                    Text('/', style: textStyle),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed('/register');
                        },
                        child: Text('注册', style: textStyle)),
                  ],
                ),
                Text('登录后体验更多', style: textStyle)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _loginBuilder(BuildContext context) {
    String username = '已登陆用户名';
    String avatarUrl = 'http://via.placeholder.com/80x80';

    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      height: 95,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(avatarUrl),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.toNamed('/login');
                        },
                        child: Text(
                          username,
                          style: textStyle,
                        )),
                   
                  ],
                ),
                Text('查看编辑个人资料', style: textStyle)
              ],
            )
          ],
        ),
      ),
    );
  }

  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return flag ? _loginBuilder(context) : _notLoginBuilder(context);
  }
}
