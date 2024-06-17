import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_ui/account_widget.dart';
import 'package:wallet_app_ui/constants.dart';
import 'nav_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
                width: 40, // Provided a fixed size for the image
                height: 40,
              ), // Provided a placeholder image
            ),
            SizedBox(width: 10),
            Text(
              'Hi! Arian',
              style: TextStyle(
                color: Colors.black, // Updated to higher contrast color
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.black, // Updated to higher contrast color
            size: 30,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.menu,
            color: Colors.black, // Updated to higher contrast color
            size: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Updated to higher contrast color
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: ConstantsColors.greenColor,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '\$' +
                              (10 + Random().nextDouble() * 20)
                                  .toStringAsFixed(3),
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: ConstantsColors.greenColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '+3.4%',
                          style: TextStyle(
                            color: ConstantsColors.greenColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '(' +
                              '+\$' +
                              (10 + Random().nextDouble() * 20)
                                  .toStringAsFixed(3) +
                              ')',
                          style: TextStyle(
                            color: Colors.black, // Updated to higher contrast color
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    AspectRatio(
                      aspectRatio: 2,
                      child: LineChart(
                        LineChartData(
                          minX: 0,
                          maxX: 30,
                          minY: 0,
                          maxY: 10,
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                FlSpot(0, 0),
                                FlSpot(5, 5),
                                FlSpot(10, 2),
                                FlSpot(15, 7),
                                FlSpot(20, 9),
                                FlSpot(25, 6),
                                FlSpot(30, 7),
                              ],
                              isCurved: true,
                              curveSmoothness: 0.4,
                              barWidth: 4,
                              color: ConstantsColors.greenColor,
                              dotData: FlDotData(
                                show: false,
                              ),
                              belowBarData: BarAreaData(
                                show: true,
                                gradient: LinearGradient(
                                  colors: [
                                    ConstantsColors.greenColor.withOpacity(0.3),
                                    Colors.white,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ],
                          gridData: FlGridData(show: false),
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          lineTouchData: LineTouchData(enabled: false),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                color: ConstantsColors.greenColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'SEND',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Colors.grey.shade400),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.money,
                                color: ConstantsColors.greenColor,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'REQUEST',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: Colors.grey.shade400),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.shade200,
                        offset: Offset(5, 8),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      'Accounts',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Updated to higher contrast color
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: AccountWidget(
                        balance: (10 + Random().nextDouble() * 20),
                        name: 'bank',
                        percent: Random().nextDouble(),
                      ),
                    ),
                    AccountWidget(
                      balance: (10 + Random().nextDouble() * 20),
                      name: 'savings',
                      percent: Random().nextDouble(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: AccountWidget(
                        balance: (10 + Random().nextDouble() * 20),
                        name: 'credit',
                        percent: Random().nextDouble(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
