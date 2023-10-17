import 'package:flutter/foundation.dart';

class ProductModel {
  final dynamic id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
  });

  factory ProductModel.fromJson(JsonData) {
    return ProductModel(
      id: JsonData['id'],
      image: JsonData['image'],
      category: JsonData['category'],
      title: JsonData['title'],
      description: JsonData['description'],
      price: JsonData['price'],
      rating: RatingModel.fromJson(
        JsonData['rating'],
      ),
    );
  }
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(JsonData) {
    return RatingModel(rate: JsonData['rate'], count: JsonData['count']);
  }
}
