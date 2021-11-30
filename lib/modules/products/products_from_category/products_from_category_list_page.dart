import 'package:flutter/material.dart';
import 'package:tcc/core/models/product_model.dart';
// import 'package:tcc/app/products/widgets/product_item.dart';
import 'package:tcc/core/providers/products_provider.dart';
import 'package:tcc/core/widgets/yummy_app_bar_widget.dart';
import 'package:tcc/core/widgets/yummy_bottom_search_app_bar_widget.dart';
import 'package:tcc/core/widgets/yummy_search_list_widget.dart';
import 'package:tcc/modules/products/products_from_category/widgets/scroll_listener.dart';

import 'widgets/products_from_category_item.dart';

// ignore: must_be_immutable
class ProductsFromCategoryListPage extends StatefulWidget {
  ScrollListener _model;
  final ScrollController _controller = ScrollController();
  final String categoryName;
  ProductsFromCategoryListPage({
    this.categoryName,
  }) {
    _model = ScrollListener.initialise(_controller);
  }

  @override
  _ProductsFromCategoryListPageState createState() =>
      _ProductsFromCategoryListPageState();
}

class _ProductsFromCategoryListPageState
    extends State<ProductsFromCategoryListPage> {
  List<ProductModel> productsList = ProductsState().getProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBuilder(
        animation: widget._model,
        builder: (context, child) {
          return Stack(
            children: [
              YummySearchListWidget(
                controller: widget._controller,
                itemCount: productsList.length,
                itemBuilder: (_, index) => index == 0
                    ? Padding(
                        padding: const EdgeInsets.only(top: 52.0),
                        child: ProductsFromCategoryItem(
                            productItem: productsList[index]),
                      )
                    : ProductsFromCategoryItem(
                        productItem: productsList[index]),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: widget._model.bottom,
                child: YummyAppBarWidget(
                  tittle: widget._model.bottom == 0 ? widget.categoryName : '',
                  actions: [
                    IconButton(icon: Icon(Icons.add), onPressed: () {}),
                  ],
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
