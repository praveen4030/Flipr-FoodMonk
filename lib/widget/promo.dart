import 'package:flutter/material.dart';

class PromoTile extends StatelessWidget {
  final String image;
  PromoTile({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 120,
      margin: EdgeInsets.only(right: 12),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    );
  }
}
