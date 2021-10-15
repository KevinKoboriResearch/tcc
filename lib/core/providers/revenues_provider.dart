import "dart:core";
import 'package:tcc/core/models/revenue_model.dart';
import 'package:tcc/core/data/revenue_data.dart';

class RevenuesState {
  final RevenueModel revenue1 = RevenueModel.fromMap(revenuesJson[0]);
  final RevenueModel revenue2 = RevenueModel.fromMap(revenuesJson[1]);
  final RevenueModel revenue3 = RevenueModel.fromMap(revenuesJson[2]);
  final RevenueModel revenue4 = RevenueModel.fromMap(revenuesJson[3]);
  List<RevenueModel> get categoryPS5Controls => [
        revenue1,
        revenue2,
        revenue3,
        revenue4,
      ];

  // final RevenueModel revenue4 = RevenueModel.fromMap(revenuesJson[4]);
  // final RevenueModel revenue5 = RevenueModel.fromMap(revenuesJson[5]);
  // final RevenueModel revenue6 = RevenueModel.fromMap(revenuesJson[6]);
  // final RevenueModel revenue7 = RevenueModel.fromMap(revenuesJson[7]);
  // List<RevenueModel> get categoryPS5Consoles => [revenue4, revenue5, revenue6, revenue7];
}

class CategoryRevenues {
  String title;
  List<RevenueModel> items;
  CategoryRevenues({this.title, this.items});
}

final categoriesRevenues = [
  CategoryRevenues(
    title: "PS5 Controls",
    items: RevenuesState().categoryPS5Controls,
  ),
  // CategoryRevenues(
  //   title: "PS5 Consoles",
  //   items: RevenuesState().categoryPS5Consoles,
  // ),
];
