import 'package:flipr_foodmonk/model/usuals.dart';
import 'package:flipr_foodmonk/pages/cart_page.dart';
import 'package:flipr_foodmonk/widget/promo.dart';
import 'package:flipr_foodmonk/widget/usuals.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<String> promoList = [
    'assets/bg1.jpeg',
    'assets/bg2.jpg',
    'assets/bg4.jpg',
    'assets/bg3.jpg',
  ];

  List<Usuals> usualsList = [
    new Usuals(
        image: 'assets/item1.jpg',
        name: 'Thai Plate',
        rating: '4.5',
        time: '20-30 min',
        items: 'Spring Rolls , Dosa'),
    new Usuals(
        image: 'assets/item2.jpg',
        name: 'Royal Plate',
        rating: '4.3',
        time: '10-15 min',
        items: 'Momos , Meggie'),
    new Usuals(
        image: 'assets/item3.jpeg',
        name: 'Food Place',
        rating: '4.7',
        time: '10-20 min',
        items: 'Aallo Paratha '),
  ];

  List<Usuals> deliveryList = [
    new Usuals(
        image: 'assets/item4.jpg',
        name: 'Spices Store',
        rating: '4.8',
        time: '2-3 min',
        items: 'Spices Hot and reload'),
    new Usuals(
        image: 'assets/item5.jpg',
        name: 'Chillie Centre',
        rating: '4.6',
        time: '10-12 min',
        items: 'Chillie, Cheese'),
    new Usuals(
        image: 'assets/item6.jpg',
        name: 'Veggies',
        rating: '4.1',
        time: '10-20 min',
        items: 'Capsicum, Cabbage '),
  ];

  Widget promoListWid() {
    return Container(
      height: 200,
      child: ListView.builder(
          itemCount: promoList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PromoTile(
              image: promoList[index],
            );
          }),
    );
  }

  Widget usualsListWid() {
    return Container(
      height: 170,
      child: ListView.builder(
          itemCount: usualsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return UsualsTile(
              usuals: usualsList[index],
            );
          }),
    );
  }

  Widget deliveryListWid() {
    return Container(
      height: 170,
      child: ListView.builder(
          itemCount: deliveryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return UsualsTile(
              usuals: deliveryList[index],
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        // leading: Icon(Icons.wifi_tethering),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ));
            },
          ),
          IconButton(
            icon: Icon(Icons.filter),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 16, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dubai, Media City',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
              SizedBox(
                height: 14,
              ),
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(msg: 'Search Food');
                },
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search for restaurant',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Promo',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 12,
              ),
              promoListWid(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Your Usuals',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 12,
              ),
              usualsListWid(),
              SizedBox(
                height: 16,
              ),
              Text(
                'Free Delivery',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: 12,
              ),
              deliveryListWid()
            ],
          ),
        ),
      ),
    );
  }
}
