import 'package:flutter/material.dart';
import 'package:portofolio/core/colors.dart';
import 'package:portofolio/core/text_style.dart';

Widget textField() {
  return Container(
    height: 70.0,
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    margin: EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 10.0,
    ),
    decoration: BoxDecoration(
      color: blackTextFild,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 270.0,
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
              hintStyle: hintStyle,
            ),
            style: headline2,
          ),
        ),
      ],
    ),
  );
}
