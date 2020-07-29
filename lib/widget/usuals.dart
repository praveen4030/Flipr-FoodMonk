import 'package:flipr_foodmonk/model/usuals.dart';
import 'package:flipr_foodmonk/pages/shop.dart';
import 'package:flutter/material.dart';

class UsualsTile extends StatelessWidget {
  final Usuals usuals;
  UsualsTile({this.usuals});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage(item : usuals)));
      },
          child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            height: 200,
            width: 230,
            margin: EdgeInsets.only(right: 12),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    child: Image.asset(
                      usuals.image,
                      width: 230,
                      fit: BoxFit.fill,
                      height: 120,
                    )),
                Container(
                    width: 230,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              usuals.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              usuals.time,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              usuals.items,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Text(
                              usuals.rating,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
