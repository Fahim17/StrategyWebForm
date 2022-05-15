import 'package:flutter/material.dart';
import 'package:ninjastrategy2/ui/pages/page1.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';
import 'package:ninjastrategy2/ui/pages/page3.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Page3();
  }
}
