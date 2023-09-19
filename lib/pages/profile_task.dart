/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/create_task.dart';
import 'package:productivo/pages/task_category.dart';
import 'package:productivo/widget/NavBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../components/styles.dart';

class ProfileTask extends StatefulWidget {
  static const String id = 'ProfileTask';

  const ProfileTask({Key? key}) : super(key: key);

  @override
  _ProfileTaskState createState() => _ProfileTaskState();
}

class _ProfileTaskState extends State<ProfileTask> {
  List clickedData = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          "Morning. Jacob",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CreateTask()));
        },
        backgroundColor: appColor,
        child: Icon(Icons.add),
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
                      _buildEventDtl(),
                    ],
                  ),
                  Positioned(
                      top: 140,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TaskCategory()));
                                },
                                child: _buildCat("Personal", "14 Task")),
                            _buildCat("Work", "17 Task"),
                            _buildCat("Other", "20 Task"),
                          ],
                        ),
                      )),
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
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hello this is testing text. Lorem ipsum carabitur lobortis id lorem ide.",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "4 task left for today".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(width: 10),
              Text(
                "70%".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          SizedBox(height: 16),
          LinearPercentIndicator(
            lineHeight: 6.0,
            percent: 0.7,
            animation: true,
            animationDuration: 1200,
            backgroundColor: Colors.black12,
            progressColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildEventDtl() {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          greyText("Today".toUpperCase()),
          SizedBox(height: 10),
          Column(
            children: [
              _buildATask("Meeting with Client", "10.00"),
              _buildATask("Meditate", "11.00"),
              _buildATask("Bothering Boss", "12.00"),
              _buildATask("Helping Friends", "01.25"),
              _buildATask("Meeting with Boss", "2.00"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildATask(txt, time) {
    return GestureDetector(
      onTap: () {
        print('tap');
        setState(() {
          if (clickedData.contains(time)) {
            clickedData.remove(time);
          } else {
            clickedData.add(time);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: clickedData.contains(time) == true
              ? Colors.black12
              : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txt,
                    style: TextStyle(
                      fontFamily: 'semibold',
                      fontSize: 14,
                      color: clickedData.contains(time) == true
                          ? Colors.black38
                          : Colors.black,
                    )),
                SizedBox(height: 6),
                Text(time,
                    style: TextStyle(
                      fontFamily: 'medium',
                      fontSize: 10,
                      color: clickedData.contains(time) == true
                          ? Colors.black38
                          : Colors.black,
                    )),
              ],
            ),
            Icon(
              Icons.check_box,
              color: clickedData.contains(time) == true
                  ? appColor
                  : Colors.black12,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCat(cat, task) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16),
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(cat,
                style: TextStyle(
                  fontFamily: 'semibold',
                  fontSize: 16,
                  color: Colors.black,
                )),
          ),
          SizedBox(height: 6),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(task.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'medium',
                  fontSize: 12,
                  color: Colors.black,
                )),
          ),
          SizedBox(height: 24),
          LinearPercentIndicator(
            lineHeight: 3.0,
            percent: 0.7,
            animation: true,
            animationDuration: 1200,
            backgroundColor: Colors.black12,
            progressColor: appColor,
          ),
        ],
      ),
    );
  }
}
