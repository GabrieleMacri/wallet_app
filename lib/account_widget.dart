import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:wallet_app_ui/constants.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget(
      {super.key,
        required this.balance,
        required this.name,
        required this.percent});

  final double balance;
  final String name;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5, bottom: 20, top: 15),
      child: Column(
        children: [
          CircularPercentIndicator(
            percent: percent,
            radius: 30,
            progressColor: ConstantsColors.greenColor,
            backgroundWidth: 1.7,
            lineWidth: 5.5,
            center: Icon(
              Icons.attach_money,
              color: ConstantsColors.greenColor,
              // Error: No semantic label for icon
            ),
          ),
          SizedBox(height: 15),
          Text(
            '\$' + balance.toStringAsFixed(3),
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              // Error: Insufficient color contrast
              color: Colors.grey.shade400,
            ),
          ),
          SizedBox(height: 5),
          Text(
            name.toUpperCase(),
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              // Error: Insufficient color contrast
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.shade200,
            offset: Offset(5, 8),
            blurRadius: 15,
            spreadRadius: 0,
            // Error: No consideration for high contrast mode
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
    );
  }
}
