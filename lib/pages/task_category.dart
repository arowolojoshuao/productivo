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
import 'package:productivo/widget/NavBar.dart';
import '../components/styles.dart';

class TaskCategory extends StatefulWidget {
  static const String id = 'TaskCategory';

  const TaskCategory({Key? key}) : super(key: key);

  @override
  _TaskCategoryState createState() => _TaskCategoryState();
}

class _TaskCategoryState extends State<TaskCategory>
    with SingleTickerProviderStateMixin {
  List clickedData = [];
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
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(
          "Personal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
                child: Text('All Task'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Projects'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Meetings'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildEventDtl(),
                _buildEventDtl(),
                _buildEventDtl(),
              ],
            ),
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
}
