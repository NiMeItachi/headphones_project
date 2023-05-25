import 'package:flutter/material.dart';
import '../colors/my_colors.dart';

class CustomProduct extends StatelessWidget {
  final String imgLink;

  const CustomProduct({
    super.key,
    required this.imgLink,
  });

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
            margin: const EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 10),
            decoration: const BoxDecoration(
              color: MyColors.infraRed,
            ),
            child: Image.asset(imgLink),
          ),
          // Product: details
          Container(
            width: 190,
            height: 128,
            margin: const EdgeInsets.only(top: 15, bottom: 15, left: 15),
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
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: MyColors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 4,
                                color: MyColors.white2,
                              )
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/icons/ic_favourite.png",
                              color: Colors.black,
                              scale: 1.1,
                            ),
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
                          backgroundColor: MaterialStateProperty.all(MyColors.pink),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          minimumSize: MaterialStateProperty.all(const Size(65, 28)),

                        ),
                        child: const Text(
                          "BUY",
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
