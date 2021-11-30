import "dart:core";
import 'package:tcc/core/models/receipt_model.dart';
import 'package:tcc/core/data/receipts_data.dart';

class ReceiptsState {
  final ReceiptModel receipt1 = ReceiptModel.fromMap(receiptsJson[0]);
  final ReceiptModel receipt2 = ReceiptModel.fromMap(receiptsJson[1]);
  final ReceiptModel receipt3 = ReceiptModel.fromMap(receiptsJson[2]);
  final ReceiptModel receipt4 = ReceiptModel.fromMap(receiptsJson[3]);
  
  List<ReceiptModel> get getReceipts => [
        receipt1,
        receipt2,
        receipt3,
        receipt4,
      ];
}

class CategoryReceipts {
  String title;
  List<ReceiptModel> items;
  CategoryReceipts({this.title, this.items});
}

final categoriesReceipts = [
  CategoryReceipts(
    title: "receipts",
    items: ReceiptsState().getReceipts,
  ),
];
