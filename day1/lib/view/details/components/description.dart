import 'package:flutter/material.dart';
import 'package:ui_training/constants.dart';
import 'package:ui_training/model/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Text(
        product!.description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
