import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(MaterialApp(home: MyAccord()));
}

class MyAccord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile App Guidlines'),),
      body: Container(
        child: Column (
          children: <Widget>[
            GFAccordion(
              title: "How to Apply for Loan",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Calculate Loan & Interest",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Calculate Credit Score",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Track Loan",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Make Payment",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Record Expenses",
              content: "Desc",
            ),
            GFAccordion(
              title: "How to Manage Notifications",
              content: "Desc",
            )
          ],
        )
      ),
    );
  }
}