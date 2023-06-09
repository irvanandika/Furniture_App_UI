import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uts_irvan_test/constatnt.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  bool tags = false;
  List<String> categoryList = [
    "All",
    "Chair",
    "Sofa",
    "Lamp",
    "Kitchen",
    "Table",
    "Rack",
    "Sideboard",
    "Bed",
  ];
  List RecommendedFurnituresList = [
    {
      "image": "assets/images/chair.jpeg",
      "name": "Kane X Profesional Gaming Chair",
      "price": "360"
    },
    {
      "image": "assets/images/bed.jpeg",
      "name": "Kenjo Super King Size Storage Bed",
      "price": "3000"
    },
    {
      "image": "assets/images/lamp.jpeg",
      "name": "Costa Standing Lamp",
      "price": "120"
    },
    {
      "image": "assets/images/kitchen.jpeg",
      "name": "Modern Farmhouse Kitchen Set",
      "price": "4500"
    },
  ];
  List bestList = [
    {
      "image": "assets/images/table.jpeg",
      "name": "Frato Coffe Table",
      "price": "250"
    },
    {
      "image": "assets/images/rack.jpeg",
      "name": "Tieyi Flower Rack Multi Layer",
      "price": "470"
    },
    {
      "image": "assets/images/sofa.jpeg",
      "name": "Richmond Corner Sofa",
      "price": "750"
    },
    {
      "image": "assets/images/sideboard.jpeg",
      "name": "Romana Sideboard",
      "price": "420"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 64.0,
            left: 24.0,
            right: 24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print("Side Menu"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                        height: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("Edit Profile"),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Profile.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Serenade Furniture",
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: " Find Yours Here!",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextField(
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 34.0,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Search Furniture",
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    onTap: () => print("Scan"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/scan.svg",
                        height: 30.0,
                        color: kLightColor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      categoryList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 32.0),
                        child: GestureDetector(
                          onTap: () => setState(() {
                            currentIndex = index;
                          }),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categoryList[index],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: currentIndex == index
                                      ? kPrimaryColor
                                      : Colors.black.withOpacity(0.6),
                                ),
                              ),
                              Container(
                                height: currentIndex == index ? 4.0 : 0.0,
                                width: 16.0,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "Recommended Furnitures",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 306.0,
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 16.0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: RecommendedFurnituresList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index,
                            RecommendedFurnituresList[index]["image"],
                            RecommendedFurnituresList[index]["price"],
                            tags = true,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 306.0,
                        width: 230.0,
                        margin: EdgeInsets.only(right: 16.0),
                        padding: EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 14.0,
                        ),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Hero(
                                  tag: "RecommendedFurnituresImage$index",
                                  child: Container(
                                    height: 180.0,
                                    width: 230.0,
                                    margin: EdgeInsets.only(bottom: 4.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            RecommendedFurnituresList[index]
                                                ["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 32.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              RecommendedFurnituresList[index]["name"],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$${RecommendedFurnituresList[index]["price"]}",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Best Furnitures",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 306.0,
                margin: EdgeInsets.only(
                  top: 24.0,
                  bottom: 16.0,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index,
                            bestList[index]["image"],
                            RecommendedFurnituresList[index]["price"],
                            tags = false,
                          ),
                        ),
                      ),
                      child: Container(
                        height: 306.0,
                        width: 230.0,
                        margin: EdgeInsets.only(right: 16.0),
                        padding: EdgeInsets.symmetric(
                          vertical: 14.0,
                          horizontal: 14.0,
                        ),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Hero(
                                  tag: "bestImage$index",
                                  child: Container(
                                    height: 180.0,
                                    width: 230.0,
                                    margin: EdgeInsets.only(bottom: 4.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            bestList[index]["image"]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 32.0,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              bestList[index]["name"],
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "\$${bestList[index]["price"]}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
