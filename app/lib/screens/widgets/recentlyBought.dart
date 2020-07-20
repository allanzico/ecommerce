import 'package:flutter/material.dart';

class RecentlyBought extends StatefulWidget {
  @override
  _RecentlyBoughtState createState() => _RecentlyBoughtState();
}

class _RecentlyBoughtState extends State<RecentlyBought> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Stack(
        children: <Widget>[
          Container(
              height: 250,
              width: 230,
              child: Image.asset(
                "assets/images/salmon.jpg",
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
                height: 70,
                width: 230,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.black12],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter))),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "Salmon",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.green,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.green,
                          size: 16,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      " UGX 76,558",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " (per kg)",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
