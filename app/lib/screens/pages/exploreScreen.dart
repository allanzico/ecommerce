import 'package:app/Admin/addItem.dart';
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
    return Scaffold(body: ScopedModelDescendant(
        builder: (BuildContext context, Widget child, MainModel model) {
      model.fetchFoods();
      // List<Food> foods = model.foods;
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: RefreshIndicator(
            child: ListView.builder(
                itemCount: model.foods.length,
                itemBuilder: (BuildContext listContext, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext materialContext) =>
                              AddItem()));
                    },
                    child: ExploreFood(
                      model.foods[index].name,
                      model.foods[index].slug,
                      model.foods[index].price.toString(),
                    ),
                  );
                }),
            onRefresh: model.fetchFoods,
          ));
    }));
  }
}
