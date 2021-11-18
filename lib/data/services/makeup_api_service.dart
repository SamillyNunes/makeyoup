import 'package:dio/dio.dart';
import 'package:makeyoup/data/models/product_dto.dart';

class MakeupApiService {
  static const _baseUrl = 'http://makeup-api.herokuapp.com';

  final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

  Future<List<ProductDTO>> getProducts() async {
    final response = await _dio.get('/api/v1/products.json');

    return (response.data as List).map((e) => ProductDTO.fromAPI(e)).toList();
  }
}
