/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/profile_task.dart';
import 'package:productivo/widget/elevated_button.dart';
import '../components/styles.dart';

class CreateTask extends StatefulWidget {
  static const String id = 'CreateTask';

  const CreateTask({Key? key}) : super(key: key);

  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileTask()));
          },
          child: Text('Create Task'.toUpperCase()),
        ),
      ),
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
                      SizedBox(height: 16),
                      _buildFillDtl(Icons.calendar_month, "Due Date"),
                      _buildFillDtl(Icons.discount_outlined, "Tags"),
                      _buildFillDtl(Icons.chat_bubble_outline, "Comment")
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
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 32),
      color: appColor,
      height: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          textField(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  textField() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        style: TextStyle(color: Colors.white, fontSize: 24),
        decoration: InputDecoration(
          labelText: "New Task",
          fillColor: Colors.black,
          labelStyle: TextStyle(color: Colors.white, fontSize: 18),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildFillDtl(icn, txt) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icn,
            color: Colors.black38,
          ),
          SizedBox(width: 16),
          Text(
            txt,
            style: TextStyle(
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
