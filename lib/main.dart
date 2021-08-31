import 'package:flutter/material.dart';
import 'package:onlinekaka/login.dart';
import 'package:onlinekaka/dishes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnlineKaka',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SplashScreenHome(),
    );
  }
}

class SplashScreenHome extends StatefulWidget {
  const SplashScreenHome({Key? key}) : super(key: key);

  @override
  _SplashScreenHomeState createState() => _SplashScreenHomeState();
}

class _SplashScreenHomeState extends State<SplashScreenHome> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        var userNamePref = prefs.getString('userName');
        if (userNamePref == null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext ctx) => Login(),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext ctx) => DishesHome(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
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
        padding: const EdgeInsets.only(left: 60, right: 60),
        child: Image.asset(
          "assets/logo.png",
        ),
      ),
    ));
  }
}
