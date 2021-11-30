import 'package:flutter/material.dart';

import 'package:tcc/core/models/product_model.dart';
import 'package:tcc/core/utils/consts.dart';
import 'package:tcc/modules/products/product_brands/products_list_brands_page.dart';

class ProductsFromCategoryItem extends StatelessWidget {
  final ProductModel productItem;
  const ProductsFromCategoryItem({
    Key key,
    @required this.productItem,
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
            padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductsListBrandsPage(),
                  ),
                );
              },
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                      productItem.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[800],
                        // color: Colors.grey[600],
                        fontFamily: 'Comfortaa',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.azulClaro,
                  ),
                ],
              ),
            ),
          ),
          // Divider(
          //   color: AppColors.azulClaro,
          //   endIndent: 32,
          //   height: 8,
          //   thickness: 1,
          // ),
          // Container(
          //   margin: const EdgeInÎsets.all(8),
          //   height: MediaQuery.of(context).size.width - 16,
          //   width: MediaQuery.of(context).size.width - 16,
          //   decoration: BoxDecoration(
          //     border: Border.all(
          //       color: Colors.pink[100],
          //       width: 3,
          //     ),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(23),
          //     ),
          //   ),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20.0),
          //     child: Image.network(
          //       productItem.image,
          //       // "https://images-gmi-pmc.edge-generalmills.com/4f4dbcfc-ff16-4083-a597-aa103c1ce364.jpg",
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
