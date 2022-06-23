import 'package:flutter/material.dart';
import 'package:ninjastrategy2/ui/pages/end_page.dart';
import 'package:ninjastrategy2/ui/pages/enlcondition_list.dart';
import 'package:ninjastrategy2/ui/pages/enscondition_list.dart';
import 'package:ninjastrategy2/ui/pages/profit_target.dart';
import 'package:ninjastrategy2/ui/pages/stop_loss.dart';

class FeatureNav {
  static bool profitTarget = false;
  static bool stopLoss = false;
  static bool longTrade = false;
  static bool shortTrade = false;

  static bool finishedProfitTarget = false;
  static bool finishedStopLoss = false;
  static bool finishedLongTrade = false;
  static bool finishedShortTrade = false;

  static clearNavigation() {
    profitTarget = false;
    stopLoss = false;
    longTrade = false;
    shortTrade = false;

    finishedProfitTarget = false;
    finishedStopLoss = false;
    finishedLongTrade = false;
    finishedShortTrade = false;
  }

  static void runPageRouting(BuildContext context) {
    if (profitTarget && !finishedProfitTarget) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfitTarget()));
    } else if (stopLoss && !finishedStopLoss) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => StopLoss()));
    } else if (longTrade && !finishedLongTrade) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => EnLConditionListPage()));
    } else if (shortTrade && !finishedShortTrade) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => EnSConditionListPage()));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => EndPage()));
    }
  }
}
