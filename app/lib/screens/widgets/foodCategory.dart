import 'package:app/DTO/categoryDTO.dart';
import 'package:app/models/CategoryModel.dart';
import 'package:app/screens/widgets/foodCard.dart';
import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  //Import category data
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
          );
        },
      ),
    );
  }
}
