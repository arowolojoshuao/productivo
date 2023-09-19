/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/create_notes.dart';
import 'package:productivo/pages/notes_detail.dart';
import 'package:productivo/widget/NavBar.dart';
import '../components/styles.dart';

class Notes extends StatefulWidget {
  static const String id = 'Notes';

  const Notes({Key? key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: appColor,
        toolbarHeight: 70,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Notes",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(16),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNotes()));
                },
                icon: Icon(
                  Icons.add,
                  color: appColor,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            unselectedLabelColor: Colors.black45,
            labelColor: appColor,
            controller: _tabController,
            indicatorColor: appColor,
            labelStyle: TextStyle(fontFamily: 'medium', fontSize: 14),
            unselectedLabelStyle: TextStyle(fontFamily: 'medium', fontSize: 14),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text('All Notes'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Folder'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Tags'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildNotes(),
                _buildFolder(),
                _buildNotesdtl(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotes() {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotesDetail()));
              },
              child: _buildNotesdtl()),
          _buildNotesdtl(),
          _buildNotesdtl(),
          _buildNotesdtl(),
          _buildNotesdtl(),
          _buildNotesdtl(),
        ],
      ),
    );
  }

  Widget _buildNotesdtl() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Look Up in the sky",
                style: TextStyle(fontFamily: 'semibold', fontSize: 18),
              ),
              Text(
                "Today, 16.00",
                style: TextStyle(color: Colors.black38, fontSize: 10),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              chips(),
              chips(),
            ],
          ),
          SizedBox(height: 6),
          Text(
            "Lorem ipsum dollor sit amet, adi plass cing elit. In libero nulla, msalaskued ameta, consedena",
            style: TextStyle(color: Colors.black38, fontSize: 14),
          ),
        ],
      ),
    );
  }

  chips() {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(
          'Lorem'.toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        backgroundColor: appColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
    );
  }

  Widget _buildFolder() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          _buildFolderdtl('Flutter Project', '44 Notes · Today. 10.26'),
          _buildFolderdtl('Ionic Project', '45 Notes · Today. 11.00'),
          _buildFolderdtl('Angular Project', '50 Notes · Today. 12.00'),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Icon(Icons.folder, color: appColor, size: 34),
                SizedBox(width: 10),
                Text("+ Add Folder",
                    style: TextStyle(
                      fontFamily: 'semibold',
                      fontSize: 18,
                      color: Colors.black54,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFolderdtl(txt, dtl) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(txt,
                style: TextStyle(
                  fontFamily: 'semibold',
                  fontSize: 16,
                  color: Colors.white,
                )),
            SizedBox(height: 6),
            Text(dtl,
                style: TextStyle(
                  fontFamily: 'medium',
                  fontSize: 12,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
