import 'package:flutter/material.dart';
import 'package:onlinekaka/about.dart';
import 'package:onlinekaka/contact.dart';
import 'package:onlinekaka/description.dart';
import 'package:url_launcher/url_launcher.dart';

class DishesHome extends StatefulWidget {
  const DishesHome({Key? key}) : super(key: key);

  @override
  _DishesHomeState createState() => _DishesHomeState();
}

class _DishesHomeState extends State<DishesHome> {
  List foodItems = ["", "", "", "", "", "", "", ""];

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
                            builder: (BuildContext ctx) => aboutPage()));
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
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                size: 20,
              ),
            ),
          ],
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
            height: 72,
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
              children: [
                CreateList(
                    "assets/alamgir.jpg",
                    "Alamgir Hotel",
                    "Mughlai, Kebabs, Biryani",
                    "Naaz Cinema Road,Aminabad Lucknow UP 226018",
                    "4.5",
                    "open"),
                CreateList(
                    "assets/awadhi.jpg",
                    "Awadhi Kakori Kabab (City Station)",
                    "Mughlai, Biryani",
                    "City Station, Wazirganj Lucknow UP 226022",
                    "2.0",
                    "open"),
                CreateList(
                    "assets/celebration.jpg",
                    "Celebrations By Onlinekaka",
                    "Flowers, Cakes",
                    "Hazratganj Lucknow Uttar Pradesh 226001",
                    "5.0",
                    "close"),
                CreateList(
                    "assets/LaPinzo.png",
                    "La Pino'z Pizza (Hazratganj)",
                    "Pizza, Italian",
                    "Sapru Marg Lucknow UP 226001",
                    "4.1",
                    "open"),
                CreateList(
                    "assets/Mubeens.jpeg",
                    "Mubeens",
                    "Mughlai, Biryani, Kulcha Nehari",
                    "Akbari Gate,Chowk Lucknow UP 226003",
                    "3.0",
                    "close"),
                CreateList(
                    "assets/Shabaan.png",
                    "Shabaan Tikka Biryani",
                    "Mughlai, Biryani",
                    "Chowk Lucknow UP 226003",
                    "5.0",
                    "close"),
                CreateList(
                    "assets/Subway.jpg",
                    "Subway (Hazratganj)",
                    "Healthy Food, Fast Food",
                    "6,Sapru Marg,Hazratganj Lucknow UP 226010",
                    "4.0",
                    "open"),
                CreateList(
                    "assets/Tunday.png",
                    "Tunday Kababi (Aliganj)",
                    "Vegetarian, Mughlai, Kebabs, Biryani",
                    " Kapoorthala,Aliganj,Opp Novelty Cinema Lucknow UP 226024",
                    "3.4",
                    "open"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CreateList(String str1, String str2, String str3, String str4,
      String str5, String str6) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext ctx) => descriptionPage()),
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
                              padding: const EdgeInsets.only(left: 10, top: 15),
                              child: ClipRRect(
                                child: Container(
                                  child: Image.asset(
                                    str1,
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        str2,
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(str3),
                                      Text(str4)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            ),
                            Text(
                              str5,
                              style: TextStyle(color: Colors.yellow[800]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text("Min Order: 99"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Container(
                                width: 40,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: (str6 == "open")
                                        ? Colors.green
                                        : Colors.red),
                                child: Center(child: Text(str6)),
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
  }
}
