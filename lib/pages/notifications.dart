/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/widget/NavBar.dart';
import '../components/styles.dart';

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';

  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11'
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          greyText(
            "Today".toUpperCase(),
          ),
          SizedBox(height: 16),
          _buildNotifications(),
          ListView(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: _elements.map((e) {
              return _buildNotifications();
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildNotifications() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            )
          ]),
      child: Row(
        children: [
          CircleAvatar(
            // backgroundImage: AssetImage("assets/images/man.png"),
            backgroundColor: appColor,
          ),
          SizedBox(width: 14),
          Container(
              width: MediaQuery.of(context).size.width * .6,
              child: RichText(
                text: TextSpan(
                  text: '',
                  style: TextStyle(color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Jack Ryne',
                        style: TextStyle(
                          fontFamily: "semibold",
                        )),
                    TextSpan(text: ' sent an invitation for '),
                    TextSpan(
                        text: 'Design Meeting',
                        style: TextStyle(
                          fontFamily: "semibold",
                        )),
                    TextSpan(text: ' on '),
                    TextSpan(
                        text: '11 April.',
                        style: TextStyle(
                          fontFamily: "semibold",
                        )),
                    TextSpan(text: ' Do you wish to accept it? '),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
