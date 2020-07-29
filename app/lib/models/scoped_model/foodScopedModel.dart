import 'dart:convert';

import 'package:app/models/FoodModel.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];
  final mockURL = "https://jsonplaceholder.typicode.com/users";

  //return copy of food list
  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  Future<Null> fetchFoods() {
    http.get(mockURL).then((http.Response response) {
      final List fetchedData = json.decode(response.body);

      final List<Food> fetchedItems = [];

      fetchedData.forEach((data) {
        Food food = Food(
            id: data["id"],
            category: data["username"],
            // price: data["price"].toDouble(),
            price: 20000.0,
            imagePath: "assets/images/fruits.png",
            name: data["name"]);
        fetchedItems.add(food);
      });
      _foods = fetchedItems;
      print(_foods[1].name);
    });
  }
}
