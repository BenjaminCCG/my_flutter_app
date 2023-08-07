/*
 * @Author: ChangCheng
 * @Date: 2023-04-23 16:10:47
 * @LastEditTime: 2023-04-24 09:28:54
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\searchBar\index.dart
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_flutter_app/widgets/commonImage.dart';

class SearchBar extends StatefulWidget {
  final bool? showLocation;
  final Function? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final bool? showMap;
  final VoidCallback? onSearch;
  final ValueChanged<String>? onSearchSubmit;
  const SearchBar(
      {super.key,
      this.showLocation,
      this.goBackCallback,
      this.inputValue = '',
      this.defaultInputValue = '请输入搜索词',
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  TextEditingController _controller = TextEditingController();
  FocusNode _focus = FocusNode();
  onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation != null)
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.room,
                    color: Colors.green,
                    size: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          if (widget.goBackCallback != null)
            GestureDetector(
              onTap: () {
                widget.goBackCallback!();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 16,
                ),
              ),
            ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(17)),
            ),
            height: 34,
            margin: EdgeInsets.only(right: 5),
            child: TextField(
              focusNode: _focus,
              onTap: (){
                if(widget.onSearchSubmit==null){
                  _focus.unfocus();
                }                
                widget.onSearch!();
              },
              onSubmitted: widget.onSearchSubmit,
              textInputAction: TextInputAction.search,
              controller: _controller,
              style: TextStyle(fontSize: 14, color: Colors.black),
              onChanged: (value) {
                setState(() {
                  _searchWord = value;
                });
              },
              decoration: InputDecoration(
                  hintText: widget.defaultInputValue,
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  contentPadding: EdgeInsets.only(top: 1),
                  border: InputBorder.none,
                  icon: Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                      onTap: onClean,
                      child: Icon(Icons.clear,
                          color: _controller.text == ''
                              ? Colors.grey[200]
                              : Colors.grey))),
            ),
          )),
          if (widget.onCancel != null)
            GestureDetector(
              onTap: () {
                widget.onCancel!();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  '取消',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          if (widget.showMap != null)
            CommonImage('static/icons/widget_search_bar_map.png')
        ],
      ),
    );
  }
}
