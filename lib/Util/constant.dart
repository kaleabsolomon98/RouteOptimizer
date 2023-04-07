import 'package:flutter/material.dart';

//Colors
const kPrimaryColor = Colors.green;

//AppBar widget
appBar(title) {
  return AppBar(
      backgroundColor: kPrimaryColor, title: Center(child: Text(title)));
}
