import 'package:makeyoup/data/models/product_color_dto.dart';
import 'package:makeyoup/domain/models/product_model.dart';

class ProductDTO {
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
  final List<ProductColorDTO> productColors;

  ProductDTO.fromAPI(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        description = map['description'],
        brand = map['brand'],
        price = map['price'],
        priceSign = map['price_sign'],
        imageLink = map['image_link'],
        productLink = map['product_link'],
        rating = map['rating'],
        category = map['category'],
        productType = map['product_type'],
        productColors = (map['product_colors'] as List)
            .map((e) => ProductColorDTO.fromAPI(e))
            .toList();
}

extension ProductMapper on ProductDTO {
  ProductModel toModel() {
    return ProductModel(
      id: id,
      name: name,
      description: description,
      brand: brand,
      price: price,
      priceSign: priceSign,
      imageLink: imageLink,
      productLink: productLink,
      rating: rating,
      category: category,
      productType: productType,
      productColors: productColors.map((e) => e.toModel()).toList(),
    );
  }
}
