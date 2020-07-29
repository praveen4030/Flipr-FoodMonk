import 'package:flipr_foodmonk/model/item.dart';
import 'package:flipr_foodmonk/pages/receipt_page.dart';
import 'package:flipr_foodmonk/widget/items.dart';
import 'package:flipr_foodmonk/widget/widgets.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Widget tagListWid() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        height: 60.0,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          tag('Delivery'),
          tag('Pick Up'),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Cart',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            ItemTile(
              item: new Item(
                  image: 'assets/item1.jpg',
                  name: 'Thai Plate',
                  items: 'Spring Rolls , Dosa',
                  tag: 'AED 34.00'),
            ),
            ItemTile(
              item: new Item(
                  image: 'assets/item2.jpg',
                  name: 'Royal Plate',
                  items: 'Momos , Meggie',
                  tag: 'AED 32.00'),
            ),
            SizedBox(height: 15,),
            Text(
              'Summary : AED 70.0',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            tagListWid(),
            SizedBox(height: 8,),
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset('assets/map.jpg',
                        fit: BoxFit.fill, height: 60, width: 100)),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mariana Mall brunch',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Text(
                      'Sheikh Zeed Rd',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8,),
            Text(
              'Pick up your order in',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '30 Mins',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReceiptPage(),));

              },
                          child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Make an Order',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
