/*
 * @Author: ChangCheng
 * @Date: 2023-04-24 10:07:40
 * @LastEditTime: 2023-04-24 10:32:49
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabProfile\functionButtonData.dart
 */
import 'package:get/get.dart';

class FunctionButtonItem {
  final String title;
  final String imageUrl;
  final Function? onTapHandle;

  FunctionButtonItem(this.title, this.imageUrl, this.onTapHandle);
}



final List<FunctionButtonItem> list = [
  FunctionButtonItem('钱包', 'static/images/home_profile_record.png', null),
  FunctionButtonItem('优惠', 'static/images/home_profile_order.png', null),
  FunctionButtonItem('积分', 'static/images/home_profile_favor.png', null),
  FunctionButtonItem('租房问答', 'static/images/home_profile_id.png', null),
  FunctionButtonItem('全部订单', 'static/images/home_profile_message.png', null),
  FunctionButtonItem('收藏', 'static/images/home_profile_contract.png', null),
  FunctionButtonItem('看房记录', 'static/images/home_profile_house.png', (context) {
    bool isLogin = true;
    if(isLogin){
      Get.toNamed('/roomManage');
      return;
    }
  }),
  FunctionButtonItem('联系我们', 'static/images/home_profile_wallet.png', null),
];