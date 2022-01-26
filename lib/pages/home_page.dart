import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "assets/images/item_7.jpeg",
    "assets/images/item_5.jpeg",
    "assets/images/item_6.jpeg",
    "assets/images/item_4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade400,
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
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.photo_camera,
                          color: Colors.blue,
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
              // margin: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.16,
              color: Colors.white,
              child: Row(
                children: [
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
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(75)),
                        color: Colors.lightBlueAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/image_1.jpeg"),
                          fit: BoxFit.cover,
                        ),
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
              height: MediaQuery.of(context).size.height * 0.19,
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
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      )),
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
                    height: MediaQuery.of(context).size.height * 0.26,
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
          ],
        ),
      )),
    );
  }
}
