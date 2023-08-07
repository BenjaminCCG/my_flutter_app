/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:53:57
 * @LastEditTime: 2023-04-26 16:10:44
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\routes\route.dart
 */
import 'package:get/get.dart';
import 'package:my_flutter_app/views/loading.dart';
import 'package:my_flutter_app/views/roomAdd/index.dart';
import 'package:my_flutter_app/views/roomDetail/index.dart';
import 'package:my_flutter_app/views/roomManage.dart';
import 'package:my_flutter_app/views/setting.dart';
import '../views/home.dart';
import '../views/shop.dart';
import '../views/login.dart';
import '../views/register.dart';
class AppRoute {
  static final getRoute = [
    GetPage(name: '/home', page: () => const HomePage()),
    GetPage(name: '/shop', page: () => const Shop()),
    GetPage(name: '/login', page: () => const LoginPage()),
    GetPage(name: '/register', page: () => const RegisterPage()),
     GetPage(name: '/setting', page: () => const SettingPage()),
     GetPage(name: '/roomManage', page: () => const RoomManage()),
      GetPage(name: '/addRoom', page: () => const RoomAddPage()),
      GetPage(name: '/roomDetail', page: () => const RoomDetailPage() ),
      GetPage(name: '/loading', page: () => const LoadingPage() ),
  ];
}