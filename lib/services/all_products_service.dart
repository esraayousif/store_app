import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';

import '../models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    try{    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[i]),
      );

    }
    log("products : $productList");
    log("data : $data");
    return productList;}
    catch(e){
      log("error : $e");
      return [];
    }

  }
}
