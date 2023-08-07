/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 14:11:49
 * @LastEditTime: 2023-04-23 14:50:05
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\info\data.dart
 */
class InfoItem {
  final String title;
  final String source;
  final String navigaterUrl;
  final String imageUrl;
  final String time;

  const InfoItem(
      {required this.title,
      required this.source,
      required this.navigaterUrl,
      required this.imageUrl,
      required this.time});
}

const List<InfoItem> infoData = [
  InfoItem(
      title: '家住回龙观',
      source: '青年之家',
      navigaterUrl: '/login',
      imageUrl: 'http://via.placeholder.com/130x80',
      time: '2021-04-23'),
  InfoItem(
      title: '家住回龙观家住回龙观家住回龙观家住回龙观',
      source: '青年之家',
      navigaterUrl: '/login',
      imageUrl: 'http://via.placeholder.com/130x80',
      time: '2021-04-23'),
  InfoItem(
      title: '家住回龙观家住回龙观家住回龙观家住回龙观',
      source: '青年之家',
      navigaterUrl: '/login',
      imageUrl: 'http://via.placeholder.com/130x80',
      time: '2021-04-23'),
  InfoItem(
      title: '家住回龙观家住回龙观家住回龙观家住回龙观',
      source: '青年之家',
      navigaterUrl: '/login',
      imageUrl: 'http://via.placeholder.com/130x80',
      time: '2021-04-23'),
  InfoItem(
      title: '家住回龙观家住回龙观家住回龙观家住回龙观',
      source: '青年之家',
      navigaterUrl: '/login',
      imageUrl: 'http://via.placeholder.com/130x80',
      time: '2021-04-23')
];
