import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 2),
              ],
              borderRadius: BorderRadius.circular(5)),
          child: ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: TextField(
              decoration: InputDecoration(
                  hintText: "Search food..", border: InputBorder.none),
            ),
            trailing: Icon(
              Icons.filter_list,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
