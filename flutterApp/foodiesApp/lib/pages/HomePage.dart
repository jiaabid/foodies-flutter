import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/HomeTopInfo.dart';
import 'package:flutterapp/widgets/boughtFood.dart';
import 'package:flutterapp/widgets/food_category.dart';
import 'package:flutterapp/widgets/search_field.dart';

//food data
import '../data/food_data.dart';
//model
import '../models/food_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> _foodItems = foodItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50, right: 20, left: 20),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Foods",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                )
              ),
              GestureDetector(
                onTap: (){
                  print("hello");
                },
                child: Text(
                  "ViewAll",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foodItems.map(_buildFoodItems).toList(),
          )
        ],
      ),
    );
  }
  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: FoodBought(
        id:food.id,
        name:food.name,
        imageUrl: food.imageUrl,
        category:food.category ,
        review: food.review,
        price: food.price
      ),
    );
  }
}
