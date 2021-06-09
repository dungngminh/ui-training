import 'package:flutter/material.dart';
import 'package:ui_training/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOulinedButton(Icons.remove, () {
          setState(() {
            numOfItems > 1 ? numOfItems-- : numOfItems = 0;
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString(),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOulinedButton(Icons.add, () {
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox buildOulinedButton(IconData icon, Function() pressFn) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: pressFn,
        child: Icon(icon),
      ),
    );
  }
}
