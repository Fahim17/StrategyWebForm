import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/mainpage.dart';

void main() {
  var param = Uri.base.queryParameters['id'];
  if (param != null) MainDataModelInstance.currentAccount = param;
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
      // home: EnLConditionListPage(),
      home: MainPage(),
    );
  }
}
