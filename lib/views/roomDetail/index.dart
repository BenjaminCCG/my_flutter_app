/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 17:12:10
 * @LastEditTime: 2023-04-26 11:04:36
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\views\roomDetail\index.dart
 */
import 'package:flutter/material.dart';
import 'package:my_flutter_app/views/roomDetail/data.dart';
import 'package:my_flutter_app/views/tabIndex/info/index.dart';
import 'package:my_flutter_app/widgets/commonSwiper.dart';
import 'package:my_flutter_app/widgets/commonTag.dart';
import 'package:my_flutter_app/widgets/commonTitle.dart';
import 'package:share_plus/share_plus.dart';

class RoomDetailPage extends StatefulWidget {
  const RoomDetailPage({super.key});

  @override
  State<RoomDetailPage> createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  RoomDetailData data = defaultData;
  bool isLike = false;
  bool show = false;
  
  @override
  Widget build(BuildContext context) {
    bool showTextTool = data.subTitle!.length > 100;
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title!),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Share.share('check out my website https://example.com');
              },
              icon: Icon(Icons.share))
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(),
              CommonTitle(data.title!),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(data.price!.toString(),style: TextStyle(color: Colors.pink,fontSize: 24),),
                        Text('元/月(押一付三)',style: TextStyle(color: Colors.pink))
                      ],
                    ),
                    Container(
                      child: Wrap(
                        spacing: 8,
                        children: data.tags!.map((item) => CommonTag(item)).toList(),
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    BaseInfoItem('面积:${data.size}平米'),
                    BaseInfoItem('楼层:${data.floor}'),
                    BaseInfoItem('房型：${data.roomType}'),
                    BaseInfoItem('装修：精装修'),
                    ],
                ),
              ),
              // CommonTitle('房屋配置'),
              CommonTitle('房屋概况'),
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    Text(data.subTitle??'暂无房屋概况',maxLines: show?null:5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            if(showTextTool)GestureDetector(
                              onTap: (){
                                setState(() {
                                  show = !show;
                                  // lines = 100;
                                });
                              },
                              child: Text(show?'收起':'展开')),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                        Text('举报')
                      ],
                    )
                  ],
                ),
              ),
              CommonTitle('猜你喜欢'),
              Info(),
              Container(
                height: 100,
              )
            ],
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              height: 100,
              bottom: 0,
              child: Container(
                  color: Colors.grey[200],
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLike = !isLike;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              isLike?Icons.star:Icons.star_border,
                              color: Colors.green,
                              size: 20,
                            ),
                            Text(
                              isLike?'已收藏':'收藏',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(right: 10),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('联系房东',style: TextStyle(color: Colors.white),),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('预约看房',style: TextStyle(color: Colors.white)),
                          alignment: Alignment.center,
                        ),
                      ),
                    )
                  ])))
        ],
      ),
    );
  }
}

class BaseInfoItem extends StatelessWidget {
  final String content;

  const BaseInfoItem( this.content,{super.key});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(content),
      width: (MediaQuery.of(context).size.width-3*10)/2,
    );
  }
}
