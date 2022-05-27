import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/featurenav.dart';
import 'package:ninjastrategy2/ui/pages/profit_target.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<bool> features = [false, false, false, false];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final double optionHPadding = 200;
  final double optionVPadding = 10;
  final double optionLV = 0.09;
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    // print(screensize.toString());
    return Scaffold(
      body: Center(
        child: Container(
          height: screensize.height * bxHeightRatio,
          width: screensize.width * bxWidthRatio,
          decoration: bxDecorations,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screensize.height * 0.05),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    titleText,
                    style: _textTheme.headline4,
                  ),
                ),
                SizedBox(height: screensize.height * 0.10),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * 0.05, 0, screensize.width * 0.05, 0),
                  child: Text(
                    'Select the features you want to use in your strategy.',
                    style: _textTheme.headline6,
                  ),
                ),
                SizedBox(height: screensize.height * 0.05),
                Row(
                  children: [
                    SizedBox(width: screensize.width * optionLV),
                    InkWell(
                      onTap: () {
                        features[0] = !features[0];
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: COLOR_PRIMARY),
                            borderRadius: BorderRadius.circular(5),
                            color: (features[0])
                                ? COLOR_PRIMARY
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Profit Target',
                      style: _textTheme.subtitle1,
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(height: optionVPadding),
                Row(
                  children: [
                    SizedBox(width: screensize.width * optionLV),
                    InkWell(
                      onTap: () {
                        features[1] = !features[1];
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: COLOR_PRIMARY),
                            borderRadius: BorderRadius.circular(5),
                            color: (features[1])
                                ? COLOR_PRIMARY
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Stop Loss',
                      style: _textTheme.subtitle1,
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(height: optionVPadding),
                Row(
                  children: [
                    SizedBox(width: screensize.width * optionLV),
                    InkWell(
                      onTap: () {
                        features[2] = !features[2];
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: COLOR_PRIMARY),
                            borderRadius: BorderRadius.circular(5),
                            color: (features[2])
                                ? COLOR_PRIMARY
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Take LONG Trades',
                      style: _textTheme.subtitle1,
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(height: optionVPadding),
                Row(
                  children: [
                    SizedBox(width: screensize.width * optionLV),
                    InkWell(
                      onTap: () {
                        features[3] = !features[3];
                        setState(() {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: COLOR_PRIMARY),
                            borderRadius: BorderRadius.circular(5),
                            color: (features[3])
                                ? COLOR_PRIMARY
                                : Colors.transparent),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Take SHORT Trades',
                      style: _textTheme.subtitle1,
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(height: screensize.height * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Back'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FeatureNav.profitTarget = features[0];
                        FeatureNav.stopLoss = features[1];
                        FeatureNav.longTrade = features[2];
                        FeatureNav.shortTrade = features[3];

                        FeatureNav.runPageRouting(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Next'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
