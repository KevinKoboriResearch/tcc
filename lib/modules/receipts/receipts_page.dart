import 'package:flutter/material.dart';
import 'package:tcc/core/models/receipt_model.dart';
// import 'package:tcc/app/receipts/widgets/receipts_item.dart';
import 'package:tcc/core/providers/receipts_provider.dart';
import 'package:tcc/core/widgets/yummy_app_bar_widget.dart';
import 'package:tcc/core/widgets/yummy_bottom_search_app_bar_widget.dart';
import 'package:tcc/modules/receipts/widgets/receipt_item.dart';
import 'package:tcc/modules/receipts/widgets/scroll_listener.dart';

// ignore: must_be_immutable
class ReceiptsPage extends StatefulWidget {
  ScrollListener _model;
  final ScrollController _controller = ScrollController();

  ReceiptsPage() {
    _model = ScrollListener.initialise(_controller);
  }

  @override
  _ReceiptsPageState createState() => _ReceiptsPageState();
}

class _ReceiptsPageState extends State<ReceiptsPage> {
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
                        child: ReceiptItem(receiptItem: receiptsList[index]),
                      )
                    : ReceiptItem(receiptItem: receiptsList[index]),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: widget._model.bottom,
                child: YummyAppBarWidget(
                  tittle: widget._model.bottom == 0 ? 'Receipts' : '',
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
