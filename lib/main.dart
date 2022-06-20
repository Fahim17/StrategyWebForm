import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/mainpage.dart';
import 'package:ninjastrategy2/ui/pages/condition_form.dart';
import 'package:ninjastrategy2/ui/pages/end_page.dart';
import 'package:ninjastrategy2/ui/pages/enlcondition_list.dart';
import 'package:ninjastrategy2/ui/pages/enscondition_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Strategy Generator',
      debugShowCheckedModeBanner: false,
      theme: defalutTheme,
      home: EnLConditionListPage(),
      // home: MainPage(),
    );
  }
}
