/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/login.dart';
import '../components/styles.dart';

class Welcome extends StatefulWidget {
  static const String id = 'welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(40),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Productivo",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: "medium",
                    )),
                SizedBox(height: 30),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 500s, when an unknow",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Get Started",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "medium",
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: appColor,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
