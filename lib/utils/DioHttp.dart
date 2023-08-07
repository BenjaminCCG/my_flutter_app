/*
 * @Author: ChangCheng
 * @Date: 2023-04-26 15:47:24
 * @LastEditTime: 2023-04-26 15:51:27
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\utils\DioHttp.dart
 */

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHttp {
  Dio? _client;
  BuildContext? context;

  static DioHttp of(BuildContext context) {
    return DioHttp._internal(context);
  }

  DioHttp._internal(BuildContext context) {
    if (_client == null || context != this.context) {
      this.context = context;
      var options = BaseOptions(
        baseUrl: '',
        connectTimeout: Duration(seconds: 1000 * 10),
        receiveTimeout: Duration(seconds: 1000 * 3),
        extra: {'context': context},
      );


      var client = Dio(options);
      this._client = client;
    }
  }
}
