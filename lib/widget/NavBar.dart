/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/file_screen.dart';
import 'package:productivo/pages/home.dart';
import 'package:productivo/pages/inbox.dart';
import 'package:productivo/pages/notes.dart';
import 'package:productivo/pages/profile_task.dart';
import 'package:productivo/pages/reports.dart';
import '../components/styles.dart';
import 'package:productivo/pages/profile.dart';
import 'package:productivo/pages/settings.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Admin',
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text('Senior Project Designer'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundColor: appColor,
                radius: 34,
                child: Text(
                  "JS",
                  style: TextStyle(
                      fontFamily: "medium", fontSize: 28, color: Colors.white),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: appColor,
              // image: DecorationImage(
              //     fit: BoxFit.fill, image: AssetImage('assets/images/tom.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('Files'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FileScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Profile Task'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileTask()));
            },
          ),
          ListTile(
            leading: Icon(Icons.padding),
            title: Text('Notes'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Notes()));
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Conversations'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Inbox()));
            },
          ),
          ListTile(
            leading: Icon(Icons.graphic_eq),
            title: Text('Reports'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Reports()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Setting()));
            },
          ),
        ],
      ),
    );
  }
}
