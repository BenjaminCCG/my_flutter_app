/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 17:38:55
 * @LastEditTime: 2023-04-21 17:49:12
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonSwiper.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
const List<String> defaultImages = [
  "http://via.placeholder.com/350x150",
  "http://via.placeholder.com/350x150",
  "http://via.placeholder.com/350x150",
];

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({super.key, this.images = defaultImages});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child:  Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
