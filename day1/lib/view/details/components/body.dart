import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_training/constants.dart';
import 'package:ui_training/model/Product.dart';

import 'color_size.dart';
import 'counter_fav.dart';
import 'description.dart';
import 'product_detail.dart';

class BodyDetailScreen extends StatelessWidget {
  final Product? product;

  const BodyDetailScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.33),
                  padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: kDefaultPadding / 2),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        Description(product: product),
                        CounterWithFavButton(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding * 2),
                          child: Row(
                            children: [
                              Container(
                                width: 58,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: product!.color,
                                  ),
                                ),
                                child: IconButton(
                                  icon: SvgPicture.asset(
                                    "assets/icons/add_to_cart.svg",
                                    fit: BoxFit.scaleDown,
                                  ),
                                  onPressed: null,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: product!.color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Buy  Now".toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ProductDetail(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
