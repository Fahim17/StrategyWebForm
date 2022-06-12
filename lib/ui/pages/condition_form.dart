import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/compare_data_model.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/adl.dart';
import 'package:ninjastrategy2/ui/pages/components/adx.dart';
import 'package:ninjastrategy2/ui/pages/components/chaikin_oscillator.dart';
import 'package:ninjastrategy2/ui/pages/components/chaikin_volatility.dart';
import 'package:ninjastrategy2/ui/pages/components/current_day_OHL.dart';
import 'package:ninjastrategy2/ui/pages/components/dema.dart';
import 'package:ninjastrategy2/ui/pages/components/double_stochastics.dart';
import 'package:ninjastrategy2/ui/pages/components/ema.dart';
import 'package:ninjastrategy2/ui/pages/components/fibbonacci_pivots.dart';
import 'package:ninjastrategy2/ui/pages/components/keltner_channel.dart';
import 'package:ninjastrategy2/ui/pages/components/macd.dart';
import 'package:ninjastrategy2/ui/pages/components/max.dart';
import 'package:ninjastrategy2/ui/pages/components/min.dart';
import 'package:ninjastrategy2/ui/pages/components/pivots.dart';
import 'package:ninjastrategy2/ui/pages/components/prior_day_ohlc.dart';
import 'package:ninjastrategy2/ui/pages/components/rsi.dart';
import 'package:ninjastrategy2/ui/pages/components/sma.dart';
import 'package:ninjastrategy2/ui/pages/components/std_dev.dart';
import 'package:ninjastrategy2/ui/pages/components/stochastics.dart';
import 'package:ninjastrategy2/ui/pages/components/stochastics_fast.dart';
import 'package:ninjastrategy2/ui/pages/components/swing.dart';
import 'package:ninjastrategy2/ui/pages/components/ultimate_oscillator.dart';
import 'package:ninjastrategy2/ui/pages/components/vol.dart';
import 'package:ninjastrategy2/ui/pages/components/zigzag.dart';
import 'package:ninjastrategy2/ui/pages/widgets/basic_component_layout.dart';
import 'package:ninjastrategy2/ui/pages/components/bollinger.dart';
import 'package:ninjastrategy2/ui/pages/components/bop.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';
import 'package:ninjastrategy2/ui/pages/widgets/popup_compare_operation.dart';
import 'package:ninjastrategy2/ui/pages/widgets/popup_components.dart';

class ConditionFormPage extends StatefulWidget {
  String frompage;
  ConditionFormPage({Key? key, required this.frompage}) : super(key: key);

  @override
  State<ConditionFormPage> createState() => _ConditionFormPageState();
}

class _ConditionFormPageState extends State<ConditionFormPage> {
  dynamic e1 = const Center(child: Text('Select an Element'));
  dynamic e2 = const Center(child: Text('Select an Element'));
  String compareOperation = '7';

  String e1Title = 'Select';
  String e2Title = 'Select';
  String operationTitle = 'Select';

  void selectElement1(String elm1) {
    e1Title = elm1;
    switch (elm1) {
      case 'ADL':
        e1 = ADL();
        break;
      case 'ADX':
        e1 = ADX();
        break;
      case 'Bollinger':
        e1 = Bollinger();
        break;
      case 'BOP':
        e1 = BOP();
        break;
      case 'Chaikin Oscillator':
        e1 = ChaikinOscillator();
        break;
      case 'Chaikin Volatility':
        e1 = ChaikinVolatility();
        break;
      case 'Current Day OHL':
        e1 = CurrentDayOHL();
        break;
      case 'DEMA':
        e1 = DEMA();
        break;
      case 'Double Stochastics':
        e1 = DoubleStochastics();
        break;
      case 'EMA':
        e1 = EMA();
        break;
      case 'Fibbonacci Pivots':
        e1 = FibbonacciPivots();
        break;
      case 'Keltner Channel':
        e1 = KeltnerChannel();
        break;
      case 'MACD':
        e1 = MACD();
        break;
      case 'MAX':
        e1 = MAX();
        break;
      case 'MIN':
        e1 = MIN();
        break;
      case 'Pivots':
        e1 = Pivots();
        break;
      case 'Prior Day OHLC':
        e1 = PriorDayOHLC();
        break;
      case 'RSI':
        e1 = RSI();
        break;
      case 'SMA':
        e1 = SMA();
        break;
      case 'Standard Deviation':
        e1 = StandardDeviation();
        break;
      case 'Stochastic':
        e1 = Stochastics();
        break;
      case 'Stochastic Fast':
        e1 = StochasticsFast();
        break;
      case 'Swing':
        e1 = Swing();
        break;
      case 'Ultimate Oscillator':
        e1 = UltimateOscillator();
        break;
      case 'VOL':
        e1 = VOL();
        break;
      case 'ZigZag':
        e1 = ZigZag();
        break;

      //       case 'Ask':
      //   e1 = Ask();
      //   break;
      // case 'Bid':
      //   e1 = Bid();
      //   break;
      // case 'Close':
      //   e1 = Close();
      //   break;
      // case 'High':
      //   e1 = High();
      //   break;
      // case 'Median':
      //   e1 = Median();
      //   break;
      // case 'Low':
      //   e1 = Low();
      //   break;
      default:
        e1 = const Center(child: Text('Select an Element'));
    }
  }

  void selectElement2(String elm2) {
    e2Title = elm2;
    switch (elm2) {
      case 'ADL':
        e2 = ADL();
        break;
      case 'ADX':
        e2 = ADX();
        break;
      case 'Bollinger':
        e2 = Bollinger();
        break;
      case 'BOP':
        e2 = BOP();
        break;
      case 'Chaikin Oscillator':
        e2 = ChaikinOscillator();
        break;
      case 'Chaikin Volatility':
        e2 = ChaikinVolatility();
        break;
      case 'Current Day OHL':
        e2 = CurrentDayOHL();
        break;
      case 'DEMA':
        e2 = DEMA();
        break;
      case 'Double Stochastics':
        e2 = DoubleStochastics();
        break;
      case 'EMA':
        e2 = EMA();
        break;
      case 'Fibbonacci Pivots':
        e2 = FibbonacciPivots();
        break;
      case 'Keltner Channel':
        e2 = KeltnerChannel();
        break;
      case 'MACD':
        e2 = MACD();
        break;
      case 'MAX':
        e2 = MAX();
        break;
      case 'MIN':
        e2 = MIN();
        break;
      case 'Pivots':
        e2 = Pivots();
        break;
      case 'Prior Day OHLC':
        e2 = PriorDayOHLC();
        break;
      case 'RSI':
        e2 = RSI();
        break;
      case 'SMA':
        e2 = SMA();
        break;
      case 'Standard Deviation':
        e2 = StandardDeviation();
        break;
      case 'Stochastic':
        e2 = Stochastics();
        break;
      case 'Stochastic Fast':
        e2 = StochasticsFast();
        break;
      case 'Swing':
        e2 = Swing();
        break;
      case 'Ultimate Oscillator':
        e2 = UltimateOscillator();
        break;
      case 'VOL':
        e2 = VOL();
        break;
      case 'ZigZag':
        e2 = ZigZag();
        break;
      default:
        e2 = const Center(child: Text('Select an Element'));
    }
  }

  void selectCompareOperation(String comOp) {
    operationTitle = comOp;
    switch (comOp) {
      case 'Equals':
        compareOperation = "7";
        break;
      case 'Greater':
        compareOperation = "15";
        break;
      case 'Greater Equal':
        compareOperation = "16";
        break;
      case 'Less':
        compareOperation = "13";
        break;
      case 'Less Equal':
        compareOperation = "14";
        break;
      case 'Not Equal':
        compareOperation = "6";
        break;
      case 'Cross Above':
        compareOperation = "22";
        break;
      case 'Cross Below':
        compareOperation = "23";
        break;
      default:
        compareOperation = "7";
    }
  }

  void finalizeDataModels() {
    Compare x = Compare();
    x.firstObject = e1.dataModel;
    x.secondObject = e2.dataModel;
    x.operation = compareOperation;
    x.operationName = operationTitle;

    switch (widget.frompage) {
      case 'enl':
        MainDataModelInstance.mainData.enlC.compares.add(x);
        break;
      case 'ens':
        MainDataModelInstance.mainData.ensC.compares.add(x);
        break;
      case 'exl':
        MainDataModelInstance.mainData.exlC.compares.add(x);
        break;
      case 'exs':
        MainDataModelInstance.mainData.exsC.compares.add(x);
        break;
      default:
        break;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    // print(screensize.height * bxHeightRatio);
    return Scaffold(
      body: Center(
        child: Container(
          height: screensize.height * bxHeightRatio,
          width: screensize.width * bxWidthRatio,
          decoration: bxDecorations,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Element 1',
                            style: _textTheme.headline5,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                            child: ElevatedButton(
                          onPressed: () async {
                            await showDialog(
                                context: context,
                                builder: (BuildContext context) => CompareOperationPopUp(selection: selectCompareOperation));
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(operationTitle),
                          ),
                        )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Element 2',
                            style: _textTheme.headline5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              await showDialog(
                                  context: context, builder: (BuildContext context) => ComponentsPopUp(selection: selectElement1));
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(e1Title),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 1, child: SizedBox.shrink()),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () async {
                              await showDialog(
                                  context: context, builder: (BuildContext context) => ComponentsPopUp(selection: selectElement2));
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(e2Title),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: e1),
                      Container(
                        color: COLOR_Divider,
                        width: 2,
                        height: 400,
                      ),
                      Expanded(flex: 1, child: e2),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Back'),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 1, child: SizedBox.shrink()),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              if (e1Title != 'Select' && e2Title != 'Select' && operationTitle != 'Select') {
                                finalizeDataModels();
                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('Provide All Conditions'),
                                  backgroundColor: COLOR_PRIMARY,
                                ));
                              }
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Done'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
