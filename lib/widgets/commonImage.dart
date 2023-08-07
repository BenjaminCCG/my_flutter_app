/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 11:19:10
 * @LastEditTime: 2023-04-23 11:28:01
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonImage.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advanced_networkimage_2/provider.dart';

final networkURLReg = RegExp('^http');
final localURLReg = RegExp('^static');

class CommonImage extends StatelessWidget {
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const CommonImage(this.src,{super.key, this.width, this.height, this.fit});



  @override
  Widget build(BuildContext context) {
    if (networkURLReg.hasMatch(src)) {
      return Image(
        width: width,
        height: height,
        fit: fit,
        image: AdvancedNetworkImage(
          src,
          useDiskCache: true,
          cacheRule: const CacheRule(maxAge: Duration(days: 7)),
          timeoutDuration: const Duration(seconds: 20),
        ),
      );
    }
    if(localURLReg.hasMatch(src)){
      return Image.asset(src, width: width, height: height, fit: fit);
    }
    assert(false, 'src must be a network url or local path');
    return Container();
  }
}
