// To parse this JSON data, do
//
//     final homemodal = homemodalFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Homemodal homemodalFromJson(String str) => Homemodal.fromJson(json.decode(str));

String homemodalToJson(Homemodal data) => json.encode(data.toJson());

class Homemodal {
  List<ProductDatum> productData;

  Homemodal({
    required this.productData,
  });

  factory Homemodal.fromJson(Map<String, dynamic> json) => Homemodal(
    productData: List<ProductDatum>.from(json["ProductData"].map((x) => ProductDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ProductData": List<dynamic>.from(productData.map((x) => x.toJson())),
  };
}

class ProductDatum {
  String id;
  String categoryName;
  String name;
  String price;
  String image;
  String averageRating;

  ProductDatum({
    required this.id,
    required this.categoryName,
    required this.name,
    required this.price,
    required this.image,
    required this.averageRating,
  });

  factory ProductDatum.fromJson(Map<String, dynamic> json) => ProductDatum(
    id: json["Id"],
    categoryName: json["CategoryName"],
    name: json["Name"],
    price: json["Price"],
    image: json["Image"],
    averageRating: json["AverageRating"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "CategoryName": categoryName,
    "Name": name,
    "Price": price,
    "Image": image,
    "AverageRating": averageRating,
  };
}
