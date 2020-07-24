import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 80,
              width: 45,
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(width: 0.2, color: Colors.grey))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 16,
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
                        size: 16,
                      ))
                ],
              ),
            ),
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
                  ),
                  borderRadius: BorderRadius.circular(3)),
            ),
            Container(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Food",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "UGX 20,000",
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.cancel,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
