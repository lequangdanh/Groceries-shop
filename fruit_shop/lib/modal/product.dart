class Product {
  late String title;
  late String imageUrl;
  late String description;
  late int price;
  late String ingredient;
  late String color;
  late String id;


  Product(
      {required this.title,
        required this.imageUrl,
        required this.description,
        required this.price,
        required this.ingredient,

        required this.color,
        required this.id,
      });

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    imageUrl = json['imageUrl'];
    description = json['description'];
    price = json['price'];
    ingredient = json['ingredient'];
    color = json['color'];
    id = json['id'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    data['description'] = description;
    data['price'] = price;
    data['ingredient'] = ingredient;
    data['color'] = color;
    data['id'] = id;

    return data;
  }
}