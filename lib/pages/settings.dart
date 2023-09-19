/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/edit_profile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../components/styles.dart';

class Setting extends StatefulWidget {
  static const String id = 'Setting';

  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Settings".toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headingText("Storage"),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    greyText("64gb Free Space".toUpperCase()),
                    greyText("32% Used".toUpperCase())
                  ],
                ),
                SizedBox(height: 24),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width * .76,
                  lineHeight: 20.0,
                  percent: 0.5,
                  animation: true,
                  animationDuration: 1200,
                  backgroundColor: Colors.black12,
                  progressColor: appColor,
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularPercentIndicator(
                          radius: 34.0,
                          lineWidth: 3.0,
                          percent: 0.7,
                          animation: true,
                          animationDuration: 1200,
                          center: new Text(
                            "40%",
                            style: TextStyle(color: Colors.black),
                          ),
                          progressColor: appColor,
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          child: greyText("Photos And Videos".toUpperCase()),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 34.0,
                          lineWidth: 3.0,
                          percent: 0.7,
                          animation: true,
                          animationDuration: 1200,
                          center: new Text(
                            "86%",
                            style: TextStyle(color: Colors.black),
                          ),
                          progressColor: appColor,
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          child: greyText("Documents and Files".toUpperCase()),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 34.0,
                          lineWidth: 3.0,
                          percent: 0.7,
                          animation: true,
                          animationDuration: 1200,
                          center: new Text(
                            "22%",
                            style: TextStyle(color: Colors.black),
                          ),
                          progressColor: appColor,
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Colors.black12,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width * .25,
                          child: greyText("Other Files".toUpperCase()),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          _buildProfileMenu(
            "Statistic",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
          _buildProfileMenu(
            "Edit Profile",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
          _buildProfileMenu(
            "Notifications",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
          _buildProfileMenu(
            "Settings",
            () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Setting()));
            },
          ),
          _buildProfileMenu(
            "Sign Out",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProfileMenu(text, onPressed) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: appColor,
          padding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          backgroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Expanded(
                child: Text(
              text,
              style: TextStyle(fontFamily: "medium", fontSize: 16),
            )),
            Icon(Icons.arrow_right_alt_outlined),
          ],
        ),
      ),
    );
  }
}
