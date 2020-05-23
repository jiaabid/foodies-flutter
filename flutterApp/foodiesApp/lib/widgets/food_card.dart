import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imgUrl;
  final int quantity;
  FoodCard(this.categoryName,this.imgUrl,this.quantity);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        child: Row(
          children: <Widget>[
            Image(
              image: AssetImage(imgUrl),
              height: 65.0,
              width: 65.0,
            ),
            SizedBox(width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  categoryName,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text("$quantity Kinds")
              ],
            )
          ],
        ),
      ),
    );
  }
}
