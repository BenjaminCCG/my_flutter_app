/*
 * @Author: ChangCheng
 * @Date: 2023-04-25 14:36:53
 * @LastEditTime: 2023-04-25 16:08:39
 * @LastEditors: ChangCheng
 * @Description: 
 * @FilePath: \my_flutter_app\lib\widgets\commonImagePicker.dart
 */
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defaultImages = [
  "http://via.placeholder.com/120x100",
  "http://via.placeholder.com/120x100",
  "http://via.placeholder.com/120x100",
];

double imageWidth = 120;
double imageHeight = 80;
double imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;
  const CommonImagePicker({super.key, required this.onChange});

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  List<File> files = [];
  _pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      // files = files..add(File(image.path));
      files.add(File(image.path));
    });
    if (widget.onChange != null) widget.onChange(files);
  }

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10 * 4) / 3;
    var height = width / imageWidthHeightRatio;

    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.grey, width: 1),
        // ),
        child: Icon(Icons.add),
      ),
    );

    Widget wrapper(File imageUrl) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Image.file(
            imageUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Positioned(
            right: -20,
            top: -20,
            
              child: IconButton(
            icon: Icon(
              Icons.delete_forever,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {
                // files = files..remove(imageUrl);
                files.remove(imageUrl);
              });
               if (widget.onChange != null) widget.onChange(files);
            },
          ))
        ],
      );
    }

    List<Widget> list = files.map((e) => wrapper(e)).toList()..add(addButton);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        // alignment: WrapAlignment.spaceBetween,
        spacing: 10,
        runSpacing: 10,
        children: list,
      ),
    );
  }
}
