import 'package:flutter/material.dart';
import '../../database/product.dart';
import '../colors/my_colors.dart';

class CustomProduct extends StatefulWidget {
  final Product product;

  const CustomProduct({
    super.key,
    required this.product,
  });

  @override
  State<CustomProduct> createState() => _CustomProductState();
}

class _CustomProductState extends State<CustomProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 148,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: MyColors.white2,
            offset: Offset(0, 1),
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        children: [
          // Product: image
          Container(
            width: 108,
            height: 108,
            margin:
            const EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 10),
            decoration: BoxDecoration(
              color: MyColors.infraRed,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(widget.product.imgLink),
          ),
          // Product: details
          Container(
            width: 190,
            height: 128,
            margin: const EdgeInsets.only(top: 10, bottom: 15, left: 15),
            child: Column(
              children: [
                // Product: name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Name
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bose QC-700",
                        style: TextStyle(
                          color: MyColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Favourite Button
                    Align(
                      alignment: Alignment.topRight,
                      child: Material(
                        child: Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 30,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.product.selected ? widget.product.selected = false : widget.product.selected = true;
                              });
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(MyColors.white)
                            ),
                            iconSize: 16,
                            icon: Icon(widget.product.selected ? Icons.favorite : Icons.favorite_border, color: widget.product.selected ? Colors.red : Colors.black,),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Product: description
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Over Ear, Wireless Bluetooth\nHeadphones with Built-In\nMicrophone",
                    style: TextStyle(
                      fontSize: 13,
                      color: MyColors.grey2,
                    ),
                  ),
                ),
                // Product: price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Price
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "\$379.00",
                        style: TextStyle(
                          color: MyColors.pink,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Buy button
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(MyColors.pink),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          minimumSize:
                          MaterialStateProperty.all(const Size(65, 28)),
                        ),
                        child: const Text(
                          "Buy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
