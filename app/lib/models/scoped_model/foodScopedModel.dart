import 'dart:convert';

import 'package:app/models/FoodModel.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];
  final mockURL = "https://jsonplaceholder.typicode.com/users";
  final firebaseURL = "https://groceryapp-6a377.firebaseio.com/foods.json";

  //return copy of food list
  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) async {
    //Post data to firebase
    final Map<String, dynamic> foodData = {
      "name": food.name,
      "description": food.description,
      "category": food.category,
      "price": food.price,
      "discount": food.discount
    };
    final http.Response response =
        await http.post(firebaseURL, body: json.encode(foodData));

    //Fetch data and get ID
    final Map<String, dynamic> responseData = json.decode(response.body);

//Data with Firebase ID
    Food foodDataWithID = Food(
        id: responseData["name"],
        name: food.name,
        description: food.description,
        category: food.category,
        price: food.price,
        discount: food.discount);

//Save to food list
    _foods.add(foodDataWithID);
    // print(_foods[0].name);
  }

  Future<Null> fetchFoods() {
    http
        .get(
      firebaseURL,
    )
        .then((http.Response response) {
      final Map<String, dynamic> fetchedData = json.decode(response.body);

      final List<Food> fetchedItems = [];

      // fetchedData.forEach((data) {
      //   Food food = Food(
      //       id: data["name"],
      //       category: data["category"],
      //       price: data["price"].toDouble(),
      //       // price: 20000.0,
      //       imagePath: "assets/images/fruits.png",
      //       name: data["name"]);
      //   fetchedItems.add(food);
      // });
      // _foods = fetchedItems;
      print(fetchedData);
    });
  }
}
