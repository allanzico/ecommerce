import 'package:app/DTO/foodDTO.dart';
import 'package:app/models/FoodModel.dart';
import 'package:app/screens/widgets/foodCategory.dart';
import 'package:app/screens/widgets/homeTopInfo.dart';
import 'package:app/screens/widgets/recentlyBought.dart';
import 'package:app/screens/widgets/searchField.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            children: <Widget>[
              HomeTopInfo(),
              SearchField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              FoodCategory(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Frequently bought",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Text(
                      "view All",
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: _foods.map(_buildFoodItems).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

//Build food items
  Widget _buildFoodItems(Food food) {
    return Container(margin: EdgeInsets.only(bottom:20), child: RecentlyBought(id: food.id, name: food.name, imagePath: food.imagePath, category: food.category, price: food.price, discount: food.discount,ratings: food.ratings, measurement: food.measurement,),);
  }
}
