import 'package:flutter/material.dart';
import 'package:headphones_project/components/colors/my_colors.dart';
import 'package:headphones_project/database/categoryProduct.dart';
import 'package:headphones_project/database/product.dart';
import '../components/buttons/category_button.dart';
import '../components/custom product/custom_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItemIndex=0;
  bool selectedItem=false;



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
                margin: const EdgeInsets.only(top: 0),
                width: MediaQuery.of(context).size.width,
                height: 200,
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
                                padding: EdgeInsets.only(top: 10, left: 15),
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
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 16, left: 15),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    overlayColor: const MaterialStatePropertyAll(MyColors.white2),
                                    backgroundColor: const MaterialStatePropertyAll(MyColors.white),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                  ),
                                  child: const SizedBox(
                                    width: 105,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Order Now",
                                          style: TextStyle(
                                            color: MyColors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Icon(Icons.navigate_next, color: MyColors.black,),
                                      ],
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
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset(
                          "assets/images/img_headphone_1.png",
                          scale: 0.7,
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                           selectedItemIndex=index;
                           selectedItem=index==selectedItemIndex?true:false;

                          });

                        },
                        child: CustomCategoryButton(

                          categoryProduct: categoryProducts[index], selected: selectedItem,
                        ),
                      ),
                    );
                  },

                ),
              ),
              // Products
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/product', arguments: {
                    "imgLink": products[0].imgLink,
                  });
                },
                child: CustomProduct(
                  product: products[0],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/product', arguments: {
                    "imgLink": products[1].imgLink,
                  });
                },
                child: CustomProduct(
                  product: products[1],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/product', arguments: {
                    "imgLink": products[2].imgLink,
                  });
                },
                child: CustomProduct(
                  product: products[2],
                ),
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
