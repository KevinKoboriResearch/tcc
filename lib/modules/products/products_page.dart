import 'package:flutter/material.dart';
import 'package:tcc/core/models/receipts_model.dart';
// import 'package:tcc/app/receipts/widgets/receipt_item.dart';
import 'package:tcc/core/providers/receipts_provider.dart';
import 'package:tcc/core/widgets/yummy_app_bar_widget.dart';
import 'package:tcc/core/widgets/yummy_bottom_search_app_bar_widget.dart';
import 'package:tcc/modules/receipts/widgets/receipt_item.dart';
import 'package:tcc/modules/receipts/widgets/scroll_listener.dart';

import 'widgets/product_item.dart';

// ignore: must_be_immutable
class ProductsPage extends StatefulWidget {
  ScrollListener _model;
  final ScrollController _controller = ScrollController();

  ProductsPage() {
    _model = ScrollListener.initialise(_controller);
  }

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<ReceiptModel> receiptsList = ReceiptsState().categoryPS5Controls;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBuilder(
        animation: widget._model,
        builder: (context, child) {
          return Stack(
            children: [
              ListView.builder(
                controller: widget._controller,
                itemCount: receiptsList.length,
                itemBuilder: (_, index) => index == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 52.0),
                        child: ProductItem(receiptItem: receiptsList[index]),
                      )
                    : ProductItem(receiptItem: receiptsList[index]),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: widget._model.bottom,
                child: YummyAppBarWidget(
                  tittle: 'Products',
                  backArrow: false,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: widget._model.bottom,
                child: YummyBottomSearchAppBarWidget(),
              ),
            ],
          );
        },
      ),
    );
  }
}
