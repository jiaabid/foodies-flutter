import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FoodBought extends StatefulWidget{
  final String id;
  final String name;
  final String imageUrl;
  final String category;
  final double review;
  final double price;
  FoodBought({
    this.id,
    this.name,
    this.imageUrl,
    this.category,
    this.review,
    this.price
  });
  @override
  _FoodBoughtState createState() => _FoodBoughtState();
}

class _FoodBoughtState extends State<FoodBought> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: <Widget>[
          Container(
            width: 400.0,
            height: 240.0,
            child: Image.asset(widget.imageUrl,fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              width:400.0 ,
              height: 80.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.name,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star,
                        color: Theme.of(context).primaryColor,
                        size: 24.0,),
                        Icon(Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 24.0,),
                        Icon(Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 24.0,),
                        Icon(Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 24.0,),
                        Icon(Icons.star,
                          color: Theme.of(context).primaryColor,
                          size: 24.0,),
                        SizedBox(width: 10.0,),

                        Text("${widget.review} reviews",
                        style: TextStyle(
                          color: Colors.grey
                        ),)
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(widget.price.toString(),
                    style:TextStyle(
                      color: Colors.orange,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold
                    ) ,),
                    Text("min order",
                    style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
