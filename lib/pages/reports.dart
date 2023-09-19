/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../components/styles.dart';

class Reports extends StatefulWidget {
  static const String id = 'Reports';

  const Reports({Key? key}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  List<_Chart> data = [
    _Chart('Jan', 35),
    _Chart('Feb', 28),
    _Chart('Mar', 34),
    _Chart('Apr', 32),
    _Chart('May', 40)
  ];
  String dropdownValue = 'Feb. 22 2022';
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
        centerTitle: true,
        title: Text(
          "Reports",
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
      child: Column(
        children: [
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildHeader(),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          colorText("Trends"),
                          _buildChart(),
                          colorText("Statistic"),
                          _buildIndicat(),
                        ],
                      )),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      color: appColor,
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'FROM',
                        style: TextStyle(color: Colors.black54, fontSize: 10),
                      ),
                    ),
                    buildDropDownDate()
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'To',
                        style: TextStyle(color: Colors.black54, fontSize: 10),
                      ),
                    ),
                    buildDropDownDate()
                  ],
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildIndicat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 34.0,
              lineWidth: 3.0,
              percent: 0.7,
              animation: true,
              animationDuration: 1200,
              center: new Text(
                "40%",
                style: TextStyle(color: Colors.black),
              ),
              progressColor: appColor,
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.black12,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: greyText("Task completed".toUpperCase()),
            ),
          ],
        ),
        Column(
          children: [
            CircularPercentIndicator(
              radius: 34.0,
              lineWidth: 3.0,
              percent: 0.7,
              animation: true,
              animationDuration: 1200,
              center: new Text(
                "86%",
                style: TextStyle(color: Colors.black),
              ),
              progressColor: appColor,
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.black12,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: greyText("Meeting Attended".toUpperCase()),
            ),
          ],
        ),
        Column(
          children: [
            CircularPercentIndicator(
              radius: 34.0,
              lineWidth: 3.0,
              percent: 0.7,
              animation: true,
              animationDuration: 1200,
              center: new Text(
                "22%",
                style: TextStyle(color: Colors.black),
              ),
              progressColor: appColor,
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.black12,
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * .25,
              child: greyText("Event Attended".toUpperCase()),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildDropDownDate() {
    return Center(
      child: DropdownButton<String>(
        value: dropdownValue,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: ['Feb. 22 2022', 'Apr. 20 2022', 'Jly. 20 2022', 'Oct. 11 2022']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildChart() {
    return Column(children: [
      SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries<_Chart, String>>[
            LineSeries<_Chart, String>(
                dataSource: data,
                xValueMapper: (_Chart sales, _) => sales.year,
                yValueMapper: (_Chart sales, _) => sales.sales,
                name: 'Income',
                dataLabelSettings: DataLabelSettings(isVisible: true))
          ]),
    ]);
  }
}

class _Chart {
  _Chart(this.year, this.sales);
  final String year;
  final double sales;
}
