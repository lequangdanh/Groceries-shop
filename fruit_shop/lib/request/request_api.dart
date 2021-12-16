import 'dart:convert';
import 'package:fruit_shop/modal/product.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

const URL_API='https://6193870fd3ae6d0017da8646.mockapi.io/api/todo';

class RequestApi {
  static Future<List<Product>> getProduct() async {
    final response = await http.get(Uri.parse(URL_API));
    if (response.statusCode == 200) {
      var list=jsonDecode(response.body) as List<dynamic>;
      List<Product> products=list.map((e) => Product.fromJson(e)).toList();
      return products;
    } else {
      throw Exception('Failed to load album');
    }
  }
}