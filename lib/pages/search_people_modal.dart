/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/prepare_event.dart';
import 'package:productivo/widget/NavBar.dart';
import 'package:productivo/widget/elevated_button.dart';
import '../components/styles.dart';

class SearchPeopleModal extends StatefulWidget {
  static const String id = 'SearchPeopleModal';

  const SearchPeopleModal({Key? key}) : super(key: key);

  @override
  _SearchPeopleModalState createState() => _SearchPeopleModalState();
}

class _SearchPeopleModalState extends State<SearchPeopleModal> {
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
          "Create New Event",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PrepareEvent()));
          },
          child: Text('Invite to Event'.toUpperCase()),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search people to invite',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: appColor),
              ),
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              _buildAttendeeProfile(),
              _buildAttendeeProfile(),
              _buildAttendeeProfile()
            ],
          ),
          _buildAttendee(),
          _buildAttendee(),
        ],
      ),
    );
  }

  Widget _buildAttendee() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: appColor,
            child: Text(
              "BG",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 14),
          Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Text(
                "John Jacob",
                style: TextStyle(fontFamily: 'semibold'),
              )),
        ],
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
