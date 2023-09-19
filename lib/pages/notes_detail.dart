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

class NotesDetail extends StatefulWidget {
  static const String id = 'NotesDetail';

  const NotesDetail({Key? key}) : super(key: key);

  @override
  _NotesDetailState createState() => _NotesDetailState();
}

class _NotesDetailState extends State<NotesDetail> {
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
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: appColor,
            ),
            child: Text("Edit".toUpperCase()),
          ),
        ],
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
                      _buildNotesDtl(),
                    ],
                  ),
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
            "Look Up in The Sky",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontFamily: "medium"),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              chips('Lorem'),
              chips('Lorem'),
            ],
          ),
        ],
      ),
    );
  }

  chips(txt) {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(
          txt.toUpperCase(),
          style: TextStyle(color: appColor, fontSize: 10),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildNotesDtl() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "Lorem ipsum dolor sit amet. conserture adi pisicing elit. in libero nulla. maklseda solicitiuadtion, sebistaliar, nac effice",
            style: TextStyle(
              fontFamily: 'semibold',
            ),
          ),
        ],
      ),
    );
  }
}
