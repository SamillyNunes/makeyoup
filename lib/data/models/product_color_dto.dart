class ProductColorDTO {
  final String hexValue;
  final String colorName;

  ProductColorDTO.fromAPI(Map<String, dynamic> map)
      : hexValue = map['hex_value'],
        colorName = map['colour_name'];
}
