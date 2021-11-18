import 'package:makeyoup/domain/models/product_color_model.dart';

class ProductColorDTO {
  final String hexValue;
  final String colorName;

  ProductColorDTO.fromAPI(Map<String, dynamic> map)
      : hexValue = map['hex_value'],
        colorName = map['colour_name'];
}

extension ProductColorMapper on ProductColorDTO {
  ProductColorModel toModel() {
    return ProductColorModel(hexValue: hexValue, colorName: colorName);
  }
}
