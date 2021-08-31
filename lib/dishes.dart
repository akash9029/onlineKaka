import 'package:flutter/material.dart';
import 'package:onlinekaka/about.dart';
import 'package:onlinekaka/contact.dart';
import 'package:onlinekaka/description.dart';
import 'package:onlinekaka/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'restaurant.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class DishesHome extends StatefulWidget {
  const DishesHome({Key? key}) : super(key: key);

  @override
  _DishesHomeState createState() => _DishesHomeState();
}

class _DishesHomeState extends State<DishesHome> {
  List<RestaurantName> restaurant = [
    RestaurantName(
        image: "assets/alamgir.jpg",
        restaurantName: "Alamgir Hotel",
        description: "Mughlai, Kebabs, Biryani",
        location: "Naaz Cinema Road,Aminabad Lucknow UP 226018",
        rating: "4.5",
        activate: "open"),
    RestaurantName(
        image: "assets/awadhi.jpg",
        restaurantName: "Awadhi Kakori Kabab (City Station)",
        description: "Mughlai, Biryani",
        location: "City Station, Wazirganj Lucknow UP 226022",
        rating: "2.0",
        activate: "open"),
    RestaurantName(
        image: "assets/alamgir.jpg",
        restaurantName: "Alamgir Hotel",
        description: "Mughlai, Kebabs, Biryani",
        location: "Naaz Cinema Road,Aminabad Lucknow UP 226018",
        rating: "4.5",
        activate: "open"),
    RestaurantName(
        image: "assets/awadhi.jpg",
        restaurantName: "Awadhi Kakori Kabab (City Station)",
        description: "Mughlai, Biryani",
        location: "City Station, Wazirganj Lucknow UP 226022",
        rating: "2.0",
        activate: "open"),
    RestaurantName(
        image: "assets/celebration.jpg",
        restaurantName: "Celebrations By Onlinekaka",
        description: "Flowers, Cakes",
        location: "Hazratganj Lucknow Uttar Pradesh 226001",
        rating: "5.0",
        activate: "close"),
    RestaurantName(
        image: "assets/LaPinzo.png",
        restaurantName: "La Pino'z Pizza (Hazratganj)",
        description: "Pizza, Italian",
        location: "Sapru Marg Lucknow UP 226001",
        rating: "4.1",
        activate: "open"),
    RestaurantName(
        image: "assets/Mubeens.jpeg",
        restaurantName: "Mubeens",
        description: "Mughlai, Biryani, Kulcha Nehari",
        location: "Akbari Gate,Chowk Lucknow UP 226003",
        rating: "3.0",
        activate: "close"),
    RestaurantName(
        image: "assets/Shabaan.png",
        restaurantName: "Shabaan Tikka Biryani",
        description: "Mughlai, Biryani",
        location: "Chowk Lucknow UP 226003",
        rating: "5.0",
        activate: "close"),
    RestaurantName(
        image: "assets/Subway.jpg",
        restaurantName: "Subway (Hazratganj)",
        description: "Healthy Food, Fast Food",
        location: "6,Sapru Marg,Hazratganj Lucknow UP 226010",
        rating: "4.0",
        activate: "open"),
    RestaurantName(
        image: "assets/Tunday.png",
        restaurantName: "Tunday Kababi (Aliganj)",
        description: "Vegetarian, Mughlai, Kebabs, Biryani",
        location: " Kapoorthala,Aliganj,Opp Novelty Cinema Lucknow UP 226024",
        rating: "3.4",
        activate: "open"),
  ];
  final number = '09029639531';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.grey,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60, left: 60),
                      child: Image.asset("assets/logo.png"),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => DishesHome()));
                  },
                  child: Text(
                    "Cuisines",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => ContactMe()));
                  },
                  child: Text(
                    "Contact",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) => AboutPage()));
                  },
                  child: Text(
                    "Visit our Site",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber(number);
              },
              icon: Icon(
                Icons.call,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext ctx) => AlertDialog(
                            title: Text("Are you sure, You want to logout ?"),
                            actions: [
                              TextButton(
                                onPressed: () async {
                                  {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    setState(() {
                                      prefs.remove('userName');
                                      prefs.remove('password');
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext ctx) =>
                                                Login()));
                                  }
                                },
                                child:
                                    Text("Yes", style: TextStyle(fontSize: 18)),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18),
                                ),
                              )
                            ],
                          ));
                },
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
            height: 72,
            width: 180,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.grey,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView(
              children: restaurant.map((e) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext ctx) => DescriptionPage()),
                    );
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 15),
                                          child: ClipRRect(
                                            child: Container(
                                              child: Image.asset(
                                                e.image,
                                                width: 80,
                                                height: 80,
                                              ),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    e.restaurantName,
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(e.description),
                                                  Text(e.location)
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 15),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text(
                                          e.rating,
                                          style: TextStyle(
                                              color: Colors.yellow[800]),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 40),
                                          child: Text("Min Order: 99"),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 80),
                                          child: Container(
                                            width: 40,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: (e.activate == "open")
                                                    ? Colors.green
                                                    : Colors.red),
                                            child:
                                                Center(child: Text(e.activate)),
                                          ),
                                        ),
                                      ],
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
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  // Widget createList(String str1, String str2, String str3, String str4,
  //     String str5, String str6) {

  // }
}
