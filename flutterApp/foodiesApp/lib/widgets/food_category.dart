import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/food_card.dart';
//data
import '../data/category_data.dart';
//model
import '../models/category_model.dart';
class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.0,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context,int index){
          return FoodCard(
            _categories[index].categoryName,
              _categories[index].imgUrl,
              _categories[index].quantity
          );
        },
      ),
    );
  }
}
