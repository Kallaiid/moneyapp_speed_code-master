// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:moneyapp_speed_code/app.dart';
import 'google_sheets_api.dart';
import 'mainPages/Pages/AccountPage.dart';
import 'mainPages/pages/HomePage.dart';
import 'mainPages/pages/Accordion.dart';
import 'mainPages/pages/Loan_tracking.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
  "Ypk_test_51Kk7AJEhW7VNbn2IEUxOmTNqfgmtnXEPQAZ12WGRJ8ZpF1iPOWJJdfRfkFx6wuzkZM90KypGkjXFSa1AA1PWX2GM00P5MimC6M";
  Stripe.instance.applySettings();
  await Stripe.instance.applySettings();
  await Firebase.initializeApp();
  GoogleSheetsApi().init();
  runApp(const App());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: HomeNavigationPage(0),
    );
  }
}

class HomeNavigationPage extends StatefulWidget {
  HomeNavigationPage(this.currentIndex);
  int currentIndex;

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  final screens = [
    HomePage(),
    loantracking(),
    MyAccord(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: widget.currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.greenAccent,
          currentIndex: widget.currentIndex,
          onTap: (index) => setState(() {
            widget.currentIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: "Upcoming"),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Past"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ));
  }
}
 