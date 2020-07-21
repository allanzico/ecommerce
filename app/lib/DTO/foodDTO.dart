class Food {
  final String id;
  final String category;
  final String measurement;
  final String name;
  final String imagePath;
  final double price;
  final double discount;
  final double ratings;

  Food({this.measurement, this.id, this.category, this.name, this.imagePath, this.price, this.discount, this.ratings});
}

final foods = [ Food (id: "1", name: "Nakati", imagePath: "assets/images/food.jpg",
  price: 2300, discount: 1500, ratings: 100),  Food (id: "2", name: "Dodo", imagePath: "assets/images/salad.jpg",
  price: 4300, discount: 1000, ratings: 50),  Food (id: "3", name: "Milk", imagePath: "assets/images/food2.jpg",
  price: 34000, discount: 4500, ratings: 70)];