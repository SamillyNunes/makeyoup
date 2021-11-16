import 'package:makeyoup/domain/models/product_color_model.dart';

class ProductModel {
  final String id;
  final String name;
  final String description;
  final String brand;
  final double price;
  final String priceSign;
  final String imageLink;
  final String productLink;
  final int rating;
  final String category;
  final String productType;
  final List<ProductColorModel> productColors;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.brand,
    required this.price,
    required this.priceSign,
    required this.imageLink,
    required this.productLink,
    required this.rating,
    required this.category,
    required this.productType,
    required this.productColors,
  });
}
