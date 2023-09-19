/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class PrepareEvent extends StatefulWidget {
  static const String id = 'PrepareEvent';

  const PrepareEvent({Key? key}) : super(key: key);

  @override
  _PrepareEventState createState() => _PrepareEventState();
}

class _PrepareEventState extends State<PrepareEvent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildHeader(),
                      SizedBox(height: 40),
                      _buildEventDtl(),
                    ],
                  ),
                  Positioned(top: 120, right: 30, child: _buildAddBtn()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      color: appColor,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Prepare a Presentation for next design sprint",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontFamily: "medium"),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Task".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(width: 10),
              Text(
                "Project".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEventDtl() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.black38,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greyText("Date".toUpperCase()),
                  SizedBox(height: 6),
                  Text(
                    "Wed 8 March 2022",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.black38,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greyText("Location".toUpperCase()),
                  SizedBox(height: 6),
                  Text(
                    "Pala Vosimia, California",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.black38,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greyText("Attendant".toUpperCase()),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      _buildAttendeeProfile(),
                      _buildAttendeeProfile(),
                      _buildAttendeeProfile()
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildAddBtn() {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shadowColor: backgroundColor,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          primary: Colors.white,
          backgroundColor: appColor3,
        ),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  Widget _buildAttendeeProfile() {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            // backgroundImage: AssetImage("assets/images/man.png"),
            backgroundColor: appColor,
            child: Text(
              "BG",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
          Container(
              child: Text(
            "John",
            style: TextStyle(fontFamily: 'medium'),
          )),
        ],
      ),
    );
  }
}
