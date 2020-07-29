import 'package:app/screens/pages/signInScreen.dart';
import 'package:app/screens/widgets/orderItem.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          onPressed: () {},
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(10.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       orderItem(),
      //       orderItem(),
      //       orderItem(),
      //       orderItem(),
      //     ],
      //   ),
      // ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              OrderItem(),
              OrderItem(),
              OrderItem(),
              OrderItem(),
            ],
          ),
        ],
      ),

      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 220,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Total",
                  style: TextStyle(color: Colors.grey),
                ),
                Text("50,000", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Delivery", style: TextStyle(color: Colors.grey)),
                Text("0", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("VAT", style: TextStyle(color: Colors.grey)),
                Text("0", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            Divider(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Sub Total",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("50,000", style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignInScreen()))
                },
                color: Colors.green,
                child: Text(
                  'Proceed to Checkout',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
