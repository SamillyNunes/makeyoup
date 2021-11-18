import 'package:makeyoup/domain/models/product_model.dart';
import 'package:makeyoup/domain/repositories/product_repository.dart';

class ProductUseCases {
  final ProductRepository _productRepository;

  ProductUseCases(this._productRepository);

  Future<List<ProductModel>> getAllProducts() async {
    final products = await _productRepository.getProducts();

    return products;
  }
}
