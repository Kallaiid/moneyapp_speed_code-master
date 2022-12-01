import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneyapp_speed_code/main.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RootScreen());
  }

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;

  static const List<Widget> _widgetScreens = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return HomeNavigationPage(0);
  }
}
