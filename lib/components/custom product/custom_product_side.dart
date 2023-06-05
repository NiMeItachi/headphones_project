import 'package:flutter/material.dart';
import '../colors/my_colors.dart';

class CustomProductSide extends StatelessWidget {
  CustomProductSide({
    super.key,
    required this.selected,
    required this.imgLink,
  });

  bool selected = false;
  late final String imgLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: MyColors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: selected ? MyColors.pink : MyColors.white2, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Image.asset(
          imgLink,
        ),
      ),
    );
  }
}
