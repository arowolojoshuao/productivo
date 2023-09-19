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
import 'package:productivo/pages/search_people_modal.dart';
import 'package:productivo/widget/NavBar.dart';
import 'package:productivo/widget/elevated_button.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../components/styles.dart';

class CreateNewEvent extends StatefulWidget {
  static const String id = 'CreateNewEvent';

  const CreateNewEvent({Key? key}) : super(key: key);

  @override
  _CreateNewEventState createState() => _CreateNewEventState();
}

class _CreateNewEventState extends State<CreateNewEvent> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
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
          child: Text('Create Event'.toUpperCase()),
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
          greyText(
            "Event Name".toUpperCase(),
          ),
          SizedBox(height: 16),
          headingText("New Landing Page Design Sprint Meeting"),
          SizedBox(height: 16),
          Divider(thickness: 1, color: appColor),
          SfDateRangePicker(
            view: DateRangePickerView.month,
            monthViewSettings:
                DateRangePickerMonthViewSettings(firstDayOfWeek: 1),
            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.range,
          ),
          Divider(thickness: 1, color: appColor),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              greyText(
                "Attendee".toUpperCase(),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 16,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPeopleModal()));
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          _buildAttendee(),
          _buildAttendee()
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
            backgroundImage: AssetImage("assets/images/man.png"),
            backgroundColor: appColor,
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
}
