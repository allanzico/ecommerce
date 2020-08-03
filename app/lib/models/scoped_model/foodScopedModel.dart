import 'dart:convert';

import 'package:app/models/FoodModel.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];
  bool _isLoading = false;
  final mockURL = "https://jsonplaceholder.typicode.com/users";
  final firebaseURL = "https://groceryapp-6a377.firebaseio.com/foods.json";

  //return copy of food list
  List<Food> get foods {
    return List.from(_foods);
  }

  //Get loader
  bool get isLoading {
    return _isLoading;
  }

  Future<bool> addFood(Food food) async {
    _isLoading = true;
    notifyListeners();
    try {
      //Post data to firebase
      final Map<String, dynamic> foodData = {
        "name": food.name,
        "description": food.description,
        "category": food.category,
        "price": food.price,
        "discount": food.discount,
        "slug": food.slug
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
          slug: food.slug,
          discount: food.discount);

//Save to food list
      _foods.add(foodDataWithID);
      _isLoading = false;
      notifyListeners();

      return Future.value(true);
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }

  Future<bool> fetchFoods() async {
    _isLoading = true;
    notifyListeners();
    try {
      final http.Response response = await http.get(firebaseURL);

      final Map<String, dynamic> fetchedData = json.decode(response.body);

      final List<Food> fetchedItems = [];
      fetchedData.forEach((String id, dynamic foodData) {
        Food foodItem = Food(
            id: id,
            name: foodData["name"],
            description: foodData["description"],
            category: foodData["category"],
            discount: foodData["discount"],
            imagePath: "assets/images/fruits.png",
            price: foodData["price"],
            slug: foodData["slug"]);

        fetchedItems.add(foodItem);
      });
      _foods = fetchedItems;
      _isLoading = false;
      notifyListeners();
      return Future.value(true);
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return Future.value(false);
    }
  }
}
