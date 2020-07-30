class Food {
  final int id;
  final String category;
  final String measurement;
  final String name;
  final String imagePath;
  final double price;
  final double discount;
  final String description;
  final double ratings;

  Food(
      {this.measurement,
      this.description,
      this.id,
      this.category,
      this.name,
      this.imagePath,
      this.price,
      this.discount,
      this.ratings});
}
