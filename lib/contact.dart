import 'package:flutter/material.dart';
import 'package:onlinekaka/dishes.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.grey],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 200,
              ),
              child: Container(
                width: 400,
                height: 600,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.grey],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 150,
                    left: 10,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "Contact Me",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[800]),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_pin, color: Colors.yellow[800]),
                            Text(
                              "58 Shadab Cln. Mahanagar, Lko, UP, IN 226006 India",
                              style: TextStyle(color: Colors.yellow[800]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                          child: Row(
                            children: [
                              Icon(Icons.mail, color: Colors.yellow[800]),
                              Text("info@onlinekaka.com",
                                  style: TextStyle(color: Colors.yellow[800])),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
