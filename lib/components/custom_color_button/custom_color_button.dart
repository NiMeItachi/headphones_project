import 'package:flutter/material.dart';
import '../colors/my_colors.dart';

class CustomSelectedColor extends StatelessWidget {
  CustomSelectedColor({
    super.key,
    required this.color,
    required this.selected
  });

  final Color color;
  late bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: selected ? MyColors.pink : MyColors.white2,
          width: 2,
        ),
      ),
    );
  }
}
