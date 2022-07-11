import 'package:flutter/material.dart';
import 'package:ninjastrategy2/ui/pages/end_page.dart';
import 'package:ninjastrategy2/ui/pages/enlcondition_list.dart';
import 'package:ninjastrategy2/ui/pages/enscondition_list.dart';
import 'package:ninjastrategy2/ui/pages/profit_target.dart';
import 'package:ninjastrategy2/ui/pages/stop_loss.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FeatureNav {
  static bool profitTarget = false;
  static bool stopLoss = false;
  static bool longTrade = false;
  static bool shortTrade = false;
  static int steps = 3;

  static int finishedSteps = 0;
  static bool finishedProfitTarget = false;
  static bool finishedStopLoss = false;
  static bool finishedLongTrade = false;
  static bool finishedShortTrade = false;

  static void calcSteps() {
    steps = 3;
    if (profitTarget) steps++;
    if (stopLoss) steps++;
    if (longTrade) steps = steps + 2;
    if (shortTrade) steps = steps + 2;
  }

  static Widget getProgress() {
    return LinearPercentIndicator(
      // width: 100.0,
      lineHeight: 10.0,
      percent: double.parse((finishedSteps / steps).toStringAsFixed(2)),
      barRadius: const Radius.circular(5),
      progressColor: Colors.blue,
    );
  }

  static void increaseFinishedSteps() {
    if (finishedSteps < steps) finishedSteps++;
  }

  static void decreaseFinishedSteps() {
    if (finishedSteps > 0) finishedSteps--;
  }

  static clearNavigation() {
    profitTarget = false;
    stopLoss = false;
    longTrade = false;
    shortTrade = false;
    finishedSteps = 0;

    finishedProfitTarget = false;
    finishedStopLoss = false;
    finishedLongTrade = false;
    finishedShortTrade = false;
  }

  static void runPageRouting(BuildContext context) {
    if (profitTarget && !finishedProfitTarget) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfitTarget()));
    } else if (stopLoss && !finishedStopLoss) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StopLoss()));
    } else if (longTrade && !finishedLongTrade) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => EnLConditionListPage()));
    } else if (shortTrade && !finishedShortTrade) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => EnSConditionListPage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EndPage()));
    }
  }
}
