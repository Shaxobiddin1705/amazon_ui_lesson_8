import 'package:flutter/material.dart';

class CurrentAmazonUIPage extends StatefulWidget {
  const CurrentAmazonUIPage({Key? key}) : super(key: key);
  static const String id = "current_amazon_ui_page";

  @override
  _CurrentAmazonUIPageState createState() => _CurrentAmazonUIPageState();
}

class _CurrentAmazonUIPageState extends State<CurrentAmazonUIPage> {
  List cardText = [
    "Oculus",
    "Shop Laptops \n& Tablets",
    "Women`s Fashion",
    "Beauty \nPicks"
  ];
  List cardImages = [
    "assets/images/card_img_0.jpg",
    "assets/images/card_img_1.jpg",
    "assets/images/card_img_2.jpg",
    "assets/images/card_img_3.jpg",
  ];
  List sneakersImage = [
    "assets/images/sneaker_img_0.png",
    "assets/images/sneaker_img_1.png",
    "assets/images/sneaker_img_2.png",
    "assets/images/sneaker_img_3.png",
  ];

  List cameraImages = [
    "assets/images/camera_img_0.png",
    "assets/images/camera_img_1.png",
    "assets/images/camera_img_2.png",
    "assets/images/camera_img_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        elevation: 0,
        title: Container(
          height: 42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Amazon",
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                suffixIcon: Container(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.document_scanner,
                            color: Colors.grey,
                            size: 23,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic_none_outlined,
                            color: Colors.grey,
                            size: 23,
                          )),
                    ],
                  ),
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade300,
          child: Column(
            children: [
              //#DeliverToUzbekistan
              Container(
                color: Colors.tealAccent.shade100,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                    top: 7, left: 15, right: 15, bottom: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.only(top: 3),
                        child: const Text(
                          "Deliver to Uzbekistan",
                          style: TextStyle(fontSize: 15),
                        )),
                  ],
                ),
              ),
              //#PageViewListView
              Container(
                child: Column(
                  children: [
                    //#GridView
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: PageView(
                        children: [
                          Container(
                            color: Colors.lightBlue,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: const Text(
                                      "We ship over \n45 million products \naround the world",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 25, right: 25, top: 40),
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.topCenter,
                                      child: Image.asset(
                                        "assets/images/img_0.png",
                                        height: 170,
                                      )),
                                ),
                              ],
                            ),
                            alignment: Alignment.topCenter,
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 50, right: 30),
                            alignment: Alignment.topRight,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/img_1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                            child: const Text(
                              "Kitchen Essentials",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            padding: const EdgeInsets.only(top: 50, left: 30),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/img_2.jpg"),
                                    fit: BoxFit.cover)),
                            child: const Text(
                              "Essentials\nfor Gamers",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),

                    //#ListView
                    Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      color: Colors.grey.shade300,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: cardImages.length,
                          itemBuilder: (context, index) {
                            return Card(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                elevation: 8,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      alignment: Alignment.centerLeft,
                                      width: 140,
                                      height: 38,
                                      child: Text(cardText[index]),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      color: Colors.grey.shade300,
                                      width: 140,
                                      child: Image.asset(cardImages[index],
                                          fit: BoxFit.cover, height: 157),
                                    ),
                                  ],
                                ));
                          }),
                    ),

                    Container(
                      color: Colors.grey.shade300,
                      height: 8,
                    )
                  ],
                ),
              ),

              //#SignIn
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.175,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        "Sign in for the best experience",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.9,
                        height: 40,
                        color: Colors.yellowAccent.shade400,
                        elevation: 0,
                        onPressed: () {},
                        child: const Text(
                          "Sign in securely",
                          style: TextStyle(color: Colors.black),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Create an account",
                        style: TextStyle(color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              //#Women`sFashion
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.59,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Women`s fashion sneakers",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.48,
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: sneakersImage.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                  image: DecorationImage(
                                      image: AssetImage(sneakersImage[index]),
                                      fit: BoxFit.cover)),
                            );
                          }),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: const Text("See more", style: TextStyle(color: Colors.teal),),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 5,
              ),

              //#PopularGiftInCamera
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.59,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Popular Gifts in Camera",
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.48,
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: sneakersImage.length,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                          ),
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  image: DecorationImage(
                                      image: AssetImage(cameraImages[index]),
                                      fit: BoxFit.cover)),
                            );
                          }),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: const Text("See more", style: TextStyle(color: Colors.teal),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
