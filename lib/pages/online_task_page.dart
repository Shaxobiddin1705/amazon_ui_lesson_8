import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OnlineTaskPage extends StatefulWidget {
  const OnlineTaskPage({Key? key}) : super(key: key);
  static const String id = "online_task_page";

  @override
  _OnlineTaskPageState createState() => _OnlineTaskPageState();
}

class _OnlineTaskPageState extends State<OnlineTaskPage> {
  List images = [
    "assets/images/item_7.jpeg",
    "assets/images/item_5.jpeg",
    "assets/images/item_6.jpeg",
    "assets/images/item_4.jpeg",
  ];

  List images2 = [
    "assets/images/item_7.jpeg",
    "assets/images/item_3.jpeg",
    "assets/images/item_2.jpeg",
  ];

  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green.withBlue(170),
        title: Image.asset(
          "assets/images/amazon_logo.png",
          height: 110,
          width: 110,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mic),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size(
                double.infinity, MediaQuery.of(context).size.height * 0.065),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What are you looking for?",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.photo_camera,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                //#deleverToKorea
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueGrey,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        color: Colors.white,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "Deliver to Korea, Republic of",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                //#shipping45million
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(80)),
                            color: Colors.lightBlueAccent,
                            image: DecorationImage(
                              image: AssetImage("assets/images/image_1.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          child: const Text(
                            "We ship 45million products",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //#space
                Container(
                  height: 8,
                  color: Colors.grey.shade300,
                ),

                //#SignIn
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * 0.18,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.017),
                      const Text(
                        "Sign in for the best experience",
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 14),
                        alignment: Alignment.center,
                        child: MaterialButton(
                          height: 43,
                          color: Colors.amber,
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                          onPressed: () {},
                          child: const Text(
                            "Sign in",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Create an account",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.normal),
                            )),
                      ),
                    ],
                  ),
                ),

                //#space
                Container(
                  height: 8,
                  color: Colors.grey.shade300,
                ),

                //#DealOfTheDay
                Container(
                  alignment: Alignment.topLeft,
                  height: MediaQuery.of(context).size.height * 0.4,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "Deal of the Day",
                            style: TextStyle(fontSize: 20),
                          )),
                      const SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width,
                        child: const Image(
                          image: AssetImage('assets/images/item_7.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text("Up to 31% off APC UPS Battery Pack", style: TextStyle(fontSize: 16),)
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 16),)
                      ),
                    ],
                  ),
                ),

                //#space
                Container(
                  height: 8,
                  color: Colors.grey.shade300,
                ),

                //#BestSellers
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height * 0.52,
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text("Best sellers in Electronics", style: TextStyle(fontSize: 19),)
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: images.length,
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1.0,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),

                //#space
                Container(
                  height: 8,
                  color: Colors.grey.shade300,
                ),

                //#TopProducts
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    children: [
                      const SizedBox(height: 15,),
                      Container(
                        alignment: Alignment.topLeft,
                          child: const Text("Top products in Camera", style: TextStyle(fontSize: 18),),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children:  [
                            StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 1.3,
                              child: Image.asset(images2[0], fit: BoxFit.cover,),
                            ),
                            StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: 1,
                              child: Image.asset(images2[1], fit: BoxFit.cover,),
                            ),
                            StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: 1,
                              child: Image.asset(images2[2], fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
