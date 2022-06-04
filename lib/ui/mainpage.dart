import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/enlcondition_data_model.dart';
import 'package:ninjastrategy2/ui/pages/condition_form.dart';
import 'package:ninjastrategy2/ui/pages/enlcondition_list.dart';
import 'package:ninjastrategy2/ui/pages/page1.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';
import 'package:ninjastrategy2/ui/pages/page3.dart';
import 'package:ninjastrategy2/ui/pages/profit_target.dart';
import 'package:ninjastrategy2/ui/pages/stop_loss.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page1();
  }
}
