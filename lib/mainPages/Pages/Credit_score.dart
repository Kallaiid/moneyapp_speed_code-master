import 'package:flutter/material.dart';
import 'package:moneyapp_speed_code/mainPages/Pages/Calculate_Loans.dart';
import 'package:moneyapp_speed_code/mainPages/helper/custom_colors.dart';

import '../../Widgets/circle_progress.dart';

// ignore: use_key_in_widget_constructors
class Credit_score extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar (),
        backgroundColor: CustomColors.darkPurple,
        body: Column(
          children: [
            //Header
            Align(
              alignment: Alignment.center,
              child: Header(
                fontColor: Colors.white,
                  title1: "Credit",
                  title2: "Score",
              ),
            ),
            SizedBox(height: 20,),
            //Build Custom Circle progress bar
            CircleProgressBar(
              totalPayment: 570/1000,
            ),
            Spacer(),
            //Build Payment Details Section
        PaymentDetailSection()
         ],
        ),
    );
  }


AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
  );
 }
}

class PaymentDetailSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(27),
          topRight: Radius.circular(27)
        )
      ),
      child: Column(
        children: [
          //Build payment rows
          buildPaymentDetailrow("Payment History", CustomColors.purple),
          buildPaymentDetailrow("Amounts Owed", CustomColors.green),
          buildPaymentDetailrow("Credit History Lenght", CustomColors.red),
          buildPaymentDetailrow("Credit Mix", CustomColors.orange),
          buildPaymentDetailrow("New Credit", CustomColors.purple)
        ],
      ),
    );
  }

  Widget buildPaymentDetailrow( String rowText, Color rowColor){
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: rowColor,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
            child: Text(
              rowText,
              style: TextStyle( fontSize: 15),
            ),
        ),
        SizedBox(
          width: 110,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "\$",
                  style: TextStyle(color: Colors.grey, fontSize: 20)
                ),
              ),
              contentPadding: EdgeInsets.only(left: 15.0, top: 15)
            ),
          ),
        )
      ],
    );
  }
}


