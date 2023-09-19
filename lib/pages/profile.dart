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
import 'package:productivo/pages/notifications.dart';
import 'package:productivo/pages/settings.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../components/styles.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          "Profile".toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.drag_handle_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 20),
          _buildProfilePic(),
          Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Text(
                    "John Herry",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Senior Product Maneger",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              )),
          SizedBox(height: 20),
          _buildIndicat(),
          SizedBox(height: 30),
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
                  MaterialPageRoute(builder: (context) => Notifications()));
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

  Widget _buildProfilePic() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            // backgroundImage: AssetImage("assets/images/2.png"),
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: appColor,
              radius: 46,
              child: Text(
                "JS",
                style: TextStyle(
                    fontFamily: "medium", fontSize: 34, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Text(
                  "Task completed".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(height: 10),
              LinearPercentIndicator(
                lineHeight: 4.0,
                percent: 0.7,
                animation: true,
                animationDuration: 1200,
                backgroundColor: Colors.white24,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Text(
                  "Meeting Attended".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(height: 10),
              LinearPercentIndicator(
                lineHeight: 4.0,
                percent: 0.7,
                animation: true,
                animationDuration: 1200,
                backgroundColor: Colors.white24,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Text(
                  "Event Attended".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              SizedBox(height: 10),
              LinearPercentIndicator(
                lineHeight: 4.0,
                percent: 0.7,
                animation: true,
                animationDuration: 1200,
                backgroundColor: Colors.white24,
                progressColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
