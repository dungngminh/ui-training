import 'package:flutter/material.dart';
import 'package:ui_training/constants.dart';

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool? isSelected;
  const ColorDot({
    Key? key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected != null ? color! : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color!,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
