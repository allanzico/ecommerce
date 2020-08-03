import 'package:app/models/FoodModel.dart';
import 'package:app/models/scoped_model/mainModel.dart';
import 'package:app/screens/widgets/exploreCard.dart';

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ScopedModelDescendant(
                builder: (BuildContext context, Widget child, MainModel model) {
              model.fetchFoods();
              List<Food> foods = model.foods;
              return Column(
                  children: foods.map((Food food) {
                return ExploreFood(
                  food.name,
                  food.slug,
                  food.price.toString(),
                );
              }).toList());
            })),
      ),
    );
  }
}
