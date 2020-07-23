import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/images/eat.jpg",
                ),
                fit: BoxFit.cover,
                alignment: Alignment.bottomLeft,
              )),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Food",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                Text(
                  "20,000",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Container(
                  width: 120,
                  height: 45,
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "chicken",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "x",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 75,
              width: 45,
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                width: 1,
                color: Colors.grey,
              ))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 20,
                        color: Colors.green,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text("0"),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.green,
                        size: 20,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
