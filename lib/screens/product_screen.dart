import 'package:flutter/material.dart';
import 'package:headphones_project/components/colors/my_colors.dart';
import '../components/custom product/custom_product_side.dart';
import '../components/custom_color_button/custom_color_button.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  Color backgroundColor = MyColors.pink2;

  bool selectedSide1 = true;
  bool selectedSide2 = false;
  bool selectedSide3 = false;
  bool selectedSide4 = false;

  void changeSideColor(int index) {
    setState(() {
      if (index == 1) {
        selectedSide1 = true;
        selectedSide2 = false;
        selectedSide3 = false;
        selectedSide4 = false;
      } else if (index == 2) {
        selectedSide1 = false;
        selectedSide2 = true;
        selectedSide3 = false;
        selectedSide4 = false;
      } else if (index == 3) {
        selectedSide1 = false;
        selectedSide2 = false;
        selectedSide3 = true;
        selectedSide4 = false;
      } else if (index == 4) {
        selectedSide1 = false;
        selectedSide2 = false;
        selectedSide3 = false;
        selectedSide4 = true;
      }
    });
  }

  bool selectedColor1 = true;
  bool selectedColor2 = false;
  bool selectedColor3 = false;

  void changeColor(int index) {
    setState(() {
      if (index == 1) {
        selectedColor1 = true;
        selectedColor2 = false;
        selectedColor3 = false;
        backgroundColor = MyColors.colorFilter1;
      } else if (index == 2) {
        selectedColor1 = false;
        selectedColor2 = true;
        selectedColor3 = false;
        backgroundColor = MyColors.colorFilter2;
      } else if (index == 3) {
        selectedColor1 = false;
        selectedColor2 = false;
        selectedColor3 = true;
        backgroundColor = MyColors.colorFilter3;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // back
            Container(
              width: 42,
              height: 42,
              margin: const EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.white2),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: MyColors.black,
                ),
              ),
            ),
            // favourite
            Container(
              width: 42,
              height: 42,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: MyColors.white2),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/ic_favourite.png",
                    color: MyColors.black,
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Product
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 420,
            child: Row(
              children: [
                // Product sides
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 150),
                  height: 250,
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Side 1
                      InkWell(
                        onTap: () {
                          changeSideColor(1);
                          setState(() {
                            data["imgLink"] = "assets/images/img_headphone_1.png";
                          });

                          debugPrint("1");
                        },
                        child: CustomProductSide(
                          selected: selectedSide1,
                          imgLink: "assets/images/img_headphone_1.png",
                        ),
                      ),
                      // Side 2
                      InkWell(
                        onTap: () {
                          changeSideColor(2);
                          setState(() {
                            data["imgLink"] = "assets/images/img_headphone_4.png";
                          });
                          debugPrint("2");
                        },
                        child: CustomProductSide(
                          selected: selectedSide2,
                          imgLink: "assets/images/img_headphone_4.png",
                        ),
                      ),
                      // Side 3
                      InkWell(
                        onTap: () {
                          changeSideColor(3);
                          setState(() {
                            data["imgLink"] = "assets/images/img_headphone_2.png";
                          });
                          debugPrint("3");
                        },
                        child: CustomProductSide(
                          selected: selectedSide3,
                          imgLink: "assets/images/img_headphone_2.png",
                        ),
                      ),
                      // Side 4
                      InkWell(
                        onTap: () {
                          changeSideColor(4);
                          setState(() {
                            data["imgLink"] = "assets/images/img_headphone_5.png";
                          });
                          debugPrint("4");
                        },
                        child: CustomProductSide(
                          selected: selectedSide4,
                          imgLink: "assets/images/img_headphone_5.png",
                        ),
                      ),
                    ],
                  ),
                ),
                // Product image
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(left: 30),
                    width: 280,
                    height: 420,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100, left: 20),
                      child: Image(
                        image: AssetImage(data["imgLink"]!),
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Product Details
          Column(
            children: [
              // Name & Rating
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 20, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Name
                    const Text(
                      "Sony WH-1000XM4",
                      style: TextStyle(
                        color: MyColors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 26,
                      ),
                    ),
                    //Rating
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.white2),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(
                            image:
                                AssetImage("assets/icons/ic_rating_star.png"),
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Wireless Over-ear Industry Leading Noise Canceling\nHeadphones with Microphone",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
          // Product: Color & Specification
          Column(
            children: [
              //Specification
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    // Icon
                    Container(
                      width: 42,
                      height: 42,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: MyColors.pink2,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.white2),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/ic_document.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Product Specifications",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //Container
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: MyColors.grey,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              //Colors
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    // Icon
                    Container(
                      width: 42,
                      height: 42,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: MyColors.pink2,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: MyColors.white2),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/ic_colorfilter.png"),
                      ),
                    ),
                    // Text
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Colors",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    // Colors
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 90,
                          height: 25,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  changeColor(1);
                                },
                                child: CustomSelectedColor(
                                  color: MyColors.colorFilter1,
                                  selected: selectedColor1,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  changeColor(2);
                                },
                                child: CustomSelectedColor(
                                  color: MyColors.colorFilter2,
                                  selected: selectedColor2,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  changeColor(3);
                                },
                                child: CustomSelectedColor(
                                  color: MyColors.colorFilter3,
                                  selected: selectedColor3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // Price & Buy button
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Price
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: MyColors.black, fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                              text: "\$399", style: TextStyle(fontSize: 24)),
                          TextSpan(text: ".99", style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                    //Button
                    Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: MyColors.pink,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Add To Card  >",
                          style: TextStyle(
                            color: MyColors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
