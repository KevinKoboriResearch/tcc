import 'package:flutter/material.dart';

import 'package:tcc/core/models/receipt_model.dart';
import 'package:tcc/core/utils/consts.dart';

class ReceiptItem extends StatelessWidget {
  final ReceiptModel receiptItem;
  const ReceiptItem({
    Key key,
    @required this.receiptItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // height: 650.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
            child: Text(
              receiptItem.title,
              style: TextStyle(
                color: AppColors.azulClaro,
                // color: Colors.grey[600],
                fontFamily: 'Comfortaa',
                fontSize: 34,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: MediaQuery.of(context).size.width - 16,
            width: MediaQuery.of(context).size.width - 16,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.pink[100],
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(23),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                receiptItem.image,
                // "https://images-gmi-pmc.edge-generalmills.com/4f4dbcfc-ff16-4083-a597-aa103c1ce364.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
