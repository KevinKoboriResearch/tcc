import "dart:core";
import 'package:tcc/core/models/receipts_model.dart';
import 'package:tcc/core/data/receipts_data.dart';

class ReceiptsState {
  final ReceiptModel receipt1 = ReceiptModel.fromMap(receiptsJson[0]);
  final ReceiptModel receipt2 = ReceiptModel.fromMap(receiptsJson[1]);
  final ReceiptModel receipt3 = ReceiptModel.fromMap(receiptsJson[2]);
  final ReceiptModel receipt4 = ReceiptModel.fromMap(receiptsJson[3]);
  List<ReceiptModel> get categoryPS5Controls => [
        receipt1,
        receipt2,
        receipt3,
        receipt4,
      ];

  // final ReceiptModel receipt4 = ReceiptModel.fromMap(receiptsJson[4]);
  // final ReceiptModel receipt5 = ReceiptModel.fromMap(receiptsJson[5]);
  // final ReceiptModel receipt6 = ReceiptModel.fromMap(receiptsJson[6]);
  // final ReceiptModel receipt7 = ReceiptModel.fromMap(receiptsJson[7]);
  // List<ReceiptModel> get categoryPS5Consoles => [receipt4, receipt5, receipt6, receipt7];
}

class Categoryreceipts {
  String title;
  List<ReceiptModel> items;
  Categoryreceipts({this.title, this.items});
}

final categoriesreceipts = [
  Categoryreceipts(
    title: "PS5 Controls",
    items: ReceiptsState().categoryPS5Controls,
  ),
  // Categoryreceipts(
  //   title: "PS5 Consoles",
  //   items: receiptsState().categoryPS5Consoles,
  // ),
];
