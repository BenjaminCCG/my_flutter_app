/*
 * @Author: ChangCheng
 * @Date: 2023-04-21 10:53:57
 * @LastEditTime: 2023-04-21 15:55:20
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\routes\route.dart
 */
import 'package:get/get.dart';
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
  ];
}