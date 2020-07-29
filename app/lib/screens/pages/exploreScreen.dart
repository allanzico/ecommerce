import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              "All Foods",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(1, 1),
                    blurRadius: 2),
              ], borderRadius: BorderRadius.circular(10)),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Image(
                          width: 200,
                          image: AssetImage("assets/images/veal-chop.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "EBINYEBWA",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 3,
                                  ),
                                ),
                                Text(
                                  "Just some small legumes",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "UGX 20,000",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                // Container(
                                //   width: 30,
                                //   height: 30,
                                //   child: Stack(
                                //     children: <Widget>[
                                //       Positioned(
                                //           bottom: 0,
                                //           right: 0,
                                //           child: Container(
                                //             width: 30,
                                //             height: 30,
                                //             decoration: BoxDecoration(
                                //               color: Colors.green,
                                //             ),
                                //           ))
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 40,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.green,
                          ),
                          child: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
