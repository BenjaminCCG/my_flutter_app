/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:04:59
 * @LastEditTime: 2023-04-21 15:33:38
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\main.dart
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/routes/route.dart';
import 'package:my_flutter_app/views/notFound.dart';

void main() {
  runApp(const MyApp());
}

class Controller extends GetxController {
  var count = 0.obs;
  void increment() => count++;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       unknownRoute: GetPage(name: '/notFound', page: () => NotFound()),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/login',
      getPages:AppRoute.getRoute,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
     
    );
  }
}


