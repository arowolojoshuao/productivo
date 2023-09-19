/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/chat.dart';
import 'package:productivo/widget/NavBar.dart';
import '../components/styles.dart';

class Inbox extends StatefulWidget {
  static const String id = 'Inbox';

  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
        elevation: 0,
        title: Text(
          "Conversations",
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
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chat()));
              },
              child: _buildChatHead()),
          _buildChatHead(),
          _buildChatHead(),
          _buildChatHead(),
          _buildChatHead(),
        ],
      ),
    );
  }

  Widget _buildChatHead() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage("assets/images/man.png"),
                backgroundColor: appColor,
              ),
              SizedBox(width: 14),
              Expanded(
                  child: Text(
                'John Snowborn',
                style: TextStyle(fontSize: 16, fontFamily: 'semibold'),
              )),
              Text(
                'Today. 12.25',
                style: TextStyle(fontSize: 10, color: Colors.black38),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adi pissast cing edit. In libero nulla, mulla bhuldke spo',
            style: TextStyle(fontSize: 12, color: Colors.black45),
          )
        ],
      ),
    );
  }
}
