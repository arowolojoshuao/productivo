/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/widget/elevated_button.dart';
import '../components/styles.dart';

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isShare = false;
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
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Edit Profile".toUpperCase(),
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
          Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildsizebox(),
                      SizedBox(height: 80),
                      _buildProfileDtl(),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: MyElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditProfile()));
                          },
                          child: Text('Save Settings'),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      top: 120,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildProfilePic()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildsizebox() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
      color: appColor,
      height: 170,
    );
  }

  Widget _buildProfileDtl() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          textField("Full Name"),
          textField("Username"),
          textField("Email Address"),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  child: const Text("Private Account",
                      style: TextStyle(color: Colors.black54, fontSize: 12)),
                )),
                Switch(
                  activeColor: appColor,
                  value: isShare,
                  onChanged: (value) {
                    setState(() {
                      isShare = value;
                      print(isShare);
                    });
                  },
                )
              ],
            ),
          ),
        ],
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
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: appColor,
              radius: 46,
              child: Text(
                "HD",
                style: TextStyle(
                    fontFamily: "medium", fontSize: 34, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: MediaQuery.of(context).size.width * 0.4,
            child: SizedBox(
              height: 30,
              width: 30,
              child: TextButton(
                style: TextButton.styleFrom(
                  shadowColor: Colors.black38,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.black38,
                  size: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
