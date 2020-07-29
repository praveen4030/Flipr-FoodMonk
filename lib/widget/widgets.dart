import 'package:flutter/material.dart';

Widget tag(String tag) {
  return InkWell(
      splashColor: Colors.orange,
      child: Container(
      margin: EdgeInsets.only(right: 5,left : 10),
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[100]),
      alignment: Alignment.center,
      child: Text(
        tag,
        style: TextStyle(color: Colors.black54),
      ),
    ),
  );
}
