/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 13:32:25
 * @LastEditTime: 2023-04-23 14:00:06
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\tabIndex\index_recommond_data.dart
 */
class IndexRecommondData {
  final String title;
  final String imageUrl;
  final String navigaterUrl;
  final String subTitle;

  const IndexRecommondData(
      this.title, this.imageUrl, this.navigaterUrl, this.subTitle);
}

const List<IndexRecommondData> recommondData = [
  IndexRecommondData('家住回龙观', 'static/images/home_index_recommend_1.png',
      '/login', '家住回龙观'),
  IndexRecommondData('家住回龙观', 'static/images/home_index_recommend_2.png',
      '/login', '家住回龙观'),
  IndexRecommondData('家住回龙观', 'static/images/home_index_recommend_3.png',
      '/login', '家住回龙观'),
  IndexRecommondData('家住回龙观', 'static/images/home_index_recommend_4.png',
      '/login', '家住回龙观'),
];
