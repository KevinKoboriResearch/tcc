import "dart:core";
import 'package:tcc/core/models/product_model.dart';
import 'package:tcc/core/data/products_data.dart';

class ProductsState {
  final ProductModel product1 = ProductModel.fromMap(productsJson[0]);
  final ProductModel product2 = ProductModel.fromMap(productsJson[1]);
  final ProductModel product3 = ProductModel.fromMap(productsJson[2]);
  final ProductModel product4 = ProductModel.fromMap(productsJson[3]);
  
  List<ProductModel> get getProducts => [
        product1,
        product2,
        product3,
        product4,
      ];
}

class CategoryProducts {
  String title;
  List<ProductModel> items;
  CategoryProducts({this.title, this.items});
}

final categoriesProducts = [
  CategoryProducts(
    title: "products",
    items: ProductsState().getProducts,
  ),
];
