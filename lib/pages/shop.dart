import 'package:flipr_foodmonk/model/item.dart';
import 'package:flipr_foodmonk/model/usuals.dart';
import 'package:flipr_foodmonk/widget/items.dart';
import 'package:flipr_foodmonk/widget/widgets.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {

  final Usuals item;
  ShopPage({this.item});

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  
  List<Item> itemList = [
    new Item(
        image: 'assets/item1.jpg',
        name: 'Thai Plate',
        items: 'Spring Rolls , Dosa',
        tag: 'AED 34.00'),
    new Item(
        image: 'assets/item2.jpg',
        name: 'Royal Plate',
        items: 'Momos , Meggie',
        tag: 'AED 32.00'),
    new Item(
        image: 'assets/item3.jpeg',
        name: 'Food Place',
        items: 'Aallo Paratha ',
        tag: 'AED 30'),
  ];

  Widget itemListWid() {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: itemList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ItemTile(
              item: itemList[index],
            );
          }),
    );
  }

  Widget tagListWid() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        height: 60.0,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          tag('Popular'),
          tag('Salads'),
          tag('Main Courses'),
          tag('Dessert'),
          tag('Famous'),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        widget.item.image,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(top : 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  tagListWid(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  
                  itemListWid()
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 160, left: 12, right: 12),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[100],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.item.items,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),

                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.item.time,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                        Text(
                          widget.item.rating,
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
    );
  }
}
