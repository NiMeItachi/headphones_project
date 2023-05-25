import 'package:flutter/material.dart';
import 'package:headphones_project/components/colors/my_colors.dart';
import '../components/buttons/category_button.dart';
import '../components/custom product/custom_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white3,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // search
                  Container(
                    width: 42,
                    height: 42,
                    margin: const EdgeInsets.only(top: 40, left: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: MyColors.white2),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/ic_search.png")),
                  ),
                  // notification
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    width: 48,
                    height: 48,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              color: MyColors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: MyColors.white2),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/icons/ic_notification.png",
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: MyColors.pink,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Recommendation
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Stack(
                  children: [
                    //Container
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 380,
                        height: 150,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: MyColors.pink,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: MyColors.white2),
                        ),
                        child: Column(
                          children: [
                            // Text
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 8, left: 15),
                                child: Text(
                                  "Music and No more",
                                  style: TextStyle(
                                      color: MyColors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            // Lil text
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 20, left: 15),
                                child: Text(
                                  "10% off for One of the best\nheadphones in the world",
                                  style: TextStyle(
                                      color: MyColors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            // Button
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 16, left: 15),
                                width: 120,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Order Now  >",
                                      style: TextStyle(
                                        color: MyColors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Image
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          "assets/images/img_headphone_1.png",
                          scale: 0.8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text: Popular Category
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Popular Category",
                    style: TextStyle(
                        color: MyColors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              // Categories
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // Headphones
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.pink,
                        text: "Headphones",
                        imgLink: "assets/icons/ic_headphone.png",
                      ),
                    ),
                    // Mobile
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Mobile",
                        imgLink: "assets/icons/ic_mobile.png",
                      ),
                    ),
                    // Mouse & Keyboard
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Mouse & Keyboard",
                        imgLink: "assets/icons/ic_mobile.png",
                      ),
                    ),
                    // Computer
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Computer",
                        imgLink: "assets/icons/ic_monitor.png",
                      ),
                    ),
                    // Smart Watch
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Smart Watch",
                        imgLink: "assets/icons/ic_clock.png",
                      ),
                    ),
                    // Camera
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Camera",
                        imgLink: "assets/icons/ic_camera.png",
                      ),
                    ),
                    // Microphone
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomCategoryButton(
                        color: MyColors.white,
                        text: "Microphone",
                        imgLink: "assets/icons/ic_microphone.png",
                      ),
                    ),
                  ],
                ),
              ),
              // Products
              const CustomProduct(
                imgLink: "assets/images/img_headphone_2.png",
              ),
              const CustomProduct(
                imgLink: "assets/images/img_headphone_3.png",
              ),
              const CustomProduct(
                imgLink: "assets/images/img_headphone_1.png",
              ),
              // Sized Box
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 5,
        backgroundColor: MyColors.pink,
        child: Image.asset("assets/icons/ic_scan.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home
              SizedBox(
                height: 60,
                width: 65,
                child: IconButton(
                  onPressed: () {},
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/icons/ic_home.png",
                        scale: 0.9,
                      ),
                      const Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.pink,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Category
              SizedBox(
                height: 60,
                width: 65,
                child: IconButton(
                  onPressed: () {},
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/icons/ic_category.png",
                        scale: 0.9,
                      ),
                      const Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox
              const SizedBox(width: 70),
              // Favourite
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(
                  onPressed: () {},
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/icons/ic_favourite.png",
                        scale: 0.9,
                      ),
                      const Text(
                        "Favourite",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Profile
              SizedBox(
                height: 60,
                width: 70,
                child: IconButton(
                  onPressed: () {},
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/icons/ic_profile.png",
                        scale: 0.9,
                      ),
                      const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
