import 'package:flipr_foodmonk/model/item.dart';
import 'package:flipr_foodmonk/pages/cart_page.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatefulWidget {
  final Item item;
  ItemTile({this.item});

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
      },
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.item.image,
                    fit: BoxFit.fill, height: 75, width: 75)),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  widget.item.items,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  widget.item.tag,
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
            Expanded(
              child: Container(),
            ),
            GestureDetector(
              onTap: () {
                selected = !selected;
              },
              child: selected
                  ? Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          border: Border.all(color: Colors.deepOrangeAccent),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text('-',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 6,
                          ),
                          Text('1', style: TextStyle(color: Colors.white)),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          )
                        ],
                      ),
                    )
                  : Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepOrangeAccent),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
