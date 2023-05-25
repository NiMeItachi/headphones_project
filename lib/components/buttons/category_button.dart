import 'package:flutter/material.dart';

import '../colors/my_colors.dart';

class CustomCategoryButton extends StatelessWidget {
  final Color color;
  final String text;
  final String imgLink;

  const CustomCategoryButton({
    super.key,
    required this.color,
    required this.text,
    required this.imgLink,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: MyColors.white2)
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(imgLink),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              text,
              style: const TextStyle(
                color: MyColors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
