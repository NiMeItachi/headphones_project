import 'package:flutter/material.dart';
import '../../database/categoryProduct.dart';
import '../colors/my_colors.dart';

class CustomCategoryButton extends StatelessWidget {
  final CategoryProduct categoryProduct;
  bool selected;

  CustomCategoryButton({
    super.key,
    required this.categoryProduct,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(selected ? MyColors.pink : MyColors.white,),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          side: MaterialStatePropertyAll(BorderSide(color: selected ? MyColors.pink : MyColors.white2)),
        ),
        child: Row(
          children: [
            Image.asset(categoryProduct.imgLink, color: selected ? MyColors.white : MyColors.black,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                categoryProduct.text,
                style: TextStyle(
                  color: selected ? MyColors.white : MyColors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
