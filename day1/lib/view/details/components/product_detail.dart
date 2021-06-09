import 'package:flutter/material.dart';
import 'package:ui_training/model/Product.dart';

import '../../../constants.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 35),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aristocratic Hand Bag",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              product!.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(
                        text: "\$${product!.price}",
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Image.asset(
                    product!.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}