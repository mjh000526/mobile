import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile/model/product_detail_model.dart';

class ProductDetailService{
    final String baseUrl;

    ProductDetailService(this.baseUrl);

    Future<ProductDetailModel> getProductDetail(int id) async{
      final response = await http.get(Uri.parse('$baseUrl/$id'));

      if(response.statusCode == 200){
        final data = json.decode(utf8.decode(response.bodyBytes));
        return ProductDetailModel.fromJson(data);
      } else {
        throw Exception('ProductDetailService 오류발생');
      }
    }
}