import 'package:flutter/material.dart';

class descriptionPage extends StatefulWidget {
  const descriptionPage({Key? key}) : super(key: key);

  @override
  _descriptionPageState createState() => _descriptionPageState();
}

class _descriptionPageState extends State<descriptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
            height: 72,
          ),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/alamgir.jpg"),
                        radius: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Alamgir Hotel",
                            style: TextStyle(
                                color: Colors.yellow[800], fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green,
                            ),
                            width: 40,
                            height: 20,
                            child: Center(child: Text("open")),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Container(
                        width: 320,
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 20),
                              child: Text(
                                "Menu:",
                                style: TextStyle(
                                    color: Colors.yellow[800], fontSize: 30),
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                children: [
                                  createMenu("Chicken Lollipop", "100 ₹"),
                                  createMenu("Chicken Swarma", "80 ₹"),
                                  createMenu("Chicken Tawa", "120 ₹"),
                                  createMenu("Chicken 65", "150 ₹"),
                                  createMenu("Chicken malai Tikka", "180 ₹"),
                                  createMenu("Chicken Kabab", "110 ₹"),
                                  createMenu("Chicken Afgani", "200 ₹"),
                                  createMenu("Chicken Murg Musallam", "250 ₹"),
                                  createMenu("Chicken Angara", "300 ₹"),
                                  createMenu("Chicken Toofani", "350 ₹"),
                                  createMenu("Chicken Prawns Masala", "250 ₹"),
                                  createMenu("Chicken Masala", "150 ₹"),
                                  createMenu("Chicken Pulao", "80 ₹"),
                                  createMenu("Chicken Biryani", "200 ₹"),
                                  createMenu(
                                      "Chicken Hyderabadi Biryani", "150 ₹"),
                                  createMenu("Chicken Nawabi", "200 ₹"),
                                  createMenu("Chicken Pathiyala", "250 ₹"),
                                  createMenu("Chicken Kadai", "120 ₹"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back to Restaurants"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createMenu(String str, String str2) {
    return Container(
      width: 100,
      height: 40,
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
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                str,
                style: TextStyle(color: Colors.yellow[800], fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                str2,
                style: TextStyle(color: Colors.yellow[800]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
