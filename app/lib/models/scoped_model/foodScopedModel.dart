import 'package:app/models/FoodModel.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];

  //return copy of food list
  List<Food> get foods {
    return List.from(_foods);
  }

  void addFood(Food food) {
    _foods.add(food);
  }

  void fetchFoods() {
    http
        .get("https://jsonplaceholder.typicode.com/posts/1/comments")
        .then((http.Response response) {
      print(response.body);
    });
  }
}
