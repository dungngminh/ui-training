import 'package:flutter/material.dart';
import 'package:ui_training/model/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final void Function()? pressFn;
  const ItemCard({
    Key? key,
    this.product,
    this.pressFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressFn,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product!.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 4,
            ),
            child: Text(
              product!.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
