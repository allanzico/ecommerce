import 'package:app/models/FoodModel.dart';
import 'package:app/models/scoped_model/foodScopedModel.dart';
import 'package:app/models/scoped_model/mainModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AddItem extends StatefulWidget {
  final Food food;
  AddItem({this.food});
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  String itemName;
  String price;
  String discount;
  String category;
  String description;
  String slug;
  GlobalKey<FormState> _itemFormKey = GlobalKey();
  GlobalKey<ScaffoldState> _scaffoldStateKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldStateKey,
        appBar: AppBar(
          title: Text(
            "Add Item",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Form(
              key: _itemFormKey,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    margin: EdgeInsets.only(bottom: 15),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(5),
                        image: DecorationImage(
                            image: AssetImage("assets/images/noimage.png"))),
                  ),
                  _buildTextFormField("Item name"),
                  SizedBox(
                    height: 15,
                  ),
                  _buildTextFormField("Price"),
                  SizedBox(
                    height: 15,
                  ),
                  _buildTextFormField("Discount"),
                  SizedBox(
                    height: 15,
                  ),
                  _buildTextFormField("Category"),
                  SizedBox(
                    height: 15,
                  ),
                  _buildTextFormField("Slug"),
                  SizedBox(
                    height: 15,
                  ),
                  _buildTextFormField("Description", maxLines: 3),
                  SizedBox(
                    height: 15,
                  ),
                  ScopedModelDescendant(builder:
                      (BuildContext context, Widget child, MainModel model) {
                    return SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text('Save',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        onPressed: () async {
                          onSubmit(model.addFood);
                          if (model.isLoading) {
                            showLoadingIndicator();
                          }
                        },
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Loading Dialog
  Future<void> showLoadingIndicator() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              content: Row(children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(
              width: 10,
            ),
            Text("adding item...")
          ]));
        });
  }

  // Submit Food

  void onSubmit(Function addFood) async {
    if (_itemFormKey.currentState.validate()) {
      _itemFormKey.currentState.save();
      final Food foodItem = Food(
        name: itemName,
        category: category,
        description: description,
        slug: slug,
        price: double.parse(price),
        discount: double.parse(discount),
      );
      bool value = await addFood(foodItem);
      if (value) {
        Navigator.of(context).pop();
        SnackBar snackBar = SnackBar(
          content: Text("Item addedd successfully"),
        );
        _scaffoldStateKey.currentState.showSnackBar(snackBar);
      } else if (!value) {
        Navigator.of(context).pop();
        SnackBar snackBar = SnackBar(
          content: Text("Adding Item failed "),
        );
        _scaffoldStateKey.currentState.showSnackBar(snackBar);
      }
    }
  }

  Widget _buildTextFormField(String labelText, {int maxLines = 1}) {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "$labelText",
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.0),
                borderSide: BorderSide.none)),
        maxLines: maxLines,
        keyboardType: labelText == "Price" || labelText == "Discount"
            ? TextInputType.number
            : TextInputType.text,
        validator: (String value) {
          var errorMsg = "";
          if (value.isEmpty && labelText == "Item name") {
            errorMsg = "Item name is required";
            return errorMsg;
          }
          if (value.isEmpty && labelText == "Price") {
            errorMsg = "Price is required";
            return errorMsg;
          }
          if (value.isEmpty && labelText == "Description") {
            errorMsg = "Description is required";
            return errorMsg;
          }
          if (value.isEmpty && labelText == "Category") {
            errorMsg = "Category is required";
            return errorMsg;
          }
          if (value.isEmpty && labelText == "Item name") {
            errorMsg = "Item name is required";
            return errorMsg;
          }
          if (value.isEmpty && labelText == "Slug") {
            errorMsg = "Slug is required";
            return errorMsg;
          }
        },
        onChanged: (String value) {
          if (labelText == "Item name") {
            itemName = value;
          }
          if (labelText == "Price") {
            price = value;
          }
          if (labelText == "Category") {
            category = value;
          }
          if (labelText == "Slug") {
            slug = value;
          }
          if (labelText == "Description") {
            description = value;
          }
          if (labelText == "Discount") {
            discount = value;
          }
        });
  }
}
