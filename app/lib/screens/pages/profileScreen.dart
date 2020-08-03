import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool turnOnNotifications = false;
  bool turnOnLocationNotification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Profile",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(1, 1),
                              blurRadius: 5),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                            fit: BoxFit.cover,
                            alignment: Alignment.center)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Allan Akanyijuka",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("+256772456789",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.green, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 0.5,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        title: Text(
                          "Location",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.edit,
                          color: Colors.green,
                        ),
                        title: Text(
                          "Change Password",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.local_shipping,
                          color: Colors.green,
                        ),
                        title: Text(
                          "Shipping",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.payment,
                          color: Colors.green,
                        ),
                        title: Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 0.5,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "App Notification",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Switch(
                              value: turnOnNotifications,
                              onChanged: (bool value) {
                                setState(() {
                                  turnOnNotifications = value;
                                });
                              })
                        ],
                      ),
                      Divider(
                        height: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Location Tracking",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Switch(
                              value: turnOnLocationNotification,
                              onChanged: (bool value) {
                                setState(() {
                                  turnOnLocationNotification = value;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Other",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 0.5,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          "Language",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Divider(
                        height: 1,
                        indent: 25,
                        endIndent: 25,
                      ),
                      ListTile(
                        title: Text(
                          "Currency",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
