import 'package:flutter/material.dart';
import 'package:onlinekaka/dishes.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  static var prefUserName;

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController unTEC = new TextEditingController();
  TextEditingController pwdTEC = new TextEditingController();
  String str = "";
  static var prefUserName;
  static var prefPassword;

  callSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userName', unTEC.text);
    prefs.setString('password', pwdTEC.text);
    prefUserName = prefs.getString('userName');
    prefPassword = prefs.getString('password');
    print('Username : $prefUserName Password: $prefPassword');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.black, Colors.grey, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 60, bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextField(
                              controller: unTEC,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Name",
                                  labelText: "Username",
                                  prefixIcon:
                                      Icon(Icons.verified_user_outlined),
                                  suffixIcon: Icon(Icons.check)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: pwdTEC,
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: Icon(Icons.check)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forgot Password",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (unTEC.text.length < 3) {
                                    setState(() {
                                      str =
                                          "Username must be more than 3 letters";
                                      unTEC.text = '';
                                      pwdTEC.text = '';
                                    });
                                  } else if (pwdTEC.text.length < 3) {
                                    setState(() {
                                      str =
                                          "Password must be more than more than 3 letters";
                                      unTEC.text = '';
                                      pwdTEC.text = '';
                                    });
                                  } else {
                                    callSharedPreferences();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext ctx) =>
                                            DishesHome(),
                                      ),
                                    );
                                  }
                                },
                                child: Text("Submit !")),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                str,
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      ),
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
}
