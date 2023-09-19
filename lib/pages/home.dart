/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:productivo/pages/create_new_event.dart';
import 'package:productivo/widget/NavBar.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import '../components/styles.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  List clickedData = [];
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

  final DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: appColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        toolbarHeight: 200,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "2022",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Container(
              color: appColor,
              child: Text(
                "March",
                style: TextStyle(
                    color: Colors.white, fontSize: 28, fontFamily: 'medium'),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(16),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 16,
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  size: 16,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateNewEvent()));
                },
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: calender(),
          ),
          preferredSize: const Size(0.0, 60.0),
        ),
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
                child: Text('All Task'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('To-do'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
              Tab(
                child: Text('Events'.toUpperCase(),
                    style: TextStyle(fontFamily: 'medium')),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildTaskdtl(),
                _buildTaskdtl(),
                _buildTaskdtl(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskdtl() {
    return Container(
      padding: EdgeInsets.all(16),
      color: backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text("9",
                    style: TextStyle(fontFamily: 'semibold', fontSize: 24)),
                Text("Fri".toUpperCase(),
                    style: TextStyle(fontFamily: 'semibold', fontSize: 10)),
              ],
            ),
          ),
          SizedBox(width: 10),
          SingleChildScrollView(
            child: Column(
              children: [
                _buildATask("Meeting with Client", "10.00", false),
                _buildATask("Meditate", "11.00", false),
                _buildATask("Bothering Boss", "12.00", true),
                _buildATask("Helping Friends", "01.25", false),
                _buildATask("Meeting with Boss", "2.00", false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildATask(txt, time, current) {
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
          color: clickedData.contains(time)
              ? Colors.black12
              : current == true
                  ? appColor2
                  : Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width * .73,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(txt,
                style: TextStyle(
                  fontFamily: 'semibold',
                  fontSize: 14,
                  color: clickedData.contains(time)
                      ? Colors.black
                      : current == true
                          ? Colors.white
                          : Colors.black,
                )),
            Text(time,
                style: TextStyle(
                  fontFamily: 'medium',
                  fontSize: 14,
                  color: clickedData.contains(time)
                      ? Colors.black
                      : current == true
                          ? Colors.white
                          : Colors.black,
                )),
          ],
        ),
      ),
    );
  }

  calender() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DatePicker(
            DateTime.now(),
            width: 55,
            height: 100,
            controller: _controller,
            dateTextStyle: TextStyle(color: Colors.black54, fontSize: 16),
            initialSelectedDate: DateTime.now(),
            selectionColor: appColor,
            selectedTextColor: Colors.white,
            inactiveDates: [DateTime.now().add(Duration(days: 4))],
            onDateChange: (date) {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
