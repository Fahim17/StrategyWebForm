import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/featurenav.dart';

class StopLoss extends StatefulWidget {
  StopLoss({Key? key}) : super(key: key);

  @override
  State<StopLoss> createState() => _StopLossState();
}

class _StopLossState extends State<StopLoss> {
  List<bool> features = [false, false, false, false];

  TextEditingController ptController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final double allHPadding = 0.105;
  final double optionVPadding = 10;
  final double optionLV = 0.105;
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
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * allHPadding, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screensize.height * 0.02),
                      Text(
                        'How Do you measure the Stop Loss of the Strategy?',
                        style: _textTheme.headline6,
                      ),
                      SizedBox(height: screensize.height * 0.05),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                features[0] = true;
                                features[1] = false;
                                features[2] = false;
                                setState(() {});
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: COLOR_PRIMARY),
                                    borderRadius: BorderRadius.circular(15),
                                    color: (features[0])
                                        ? COLOR_PRIMARY
                                        : Colors.transparent),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Currency',
                              style: _textTheme.subtitle1,
                            ),
                            const Expanded(flex: 1, child: SizedBox.shrink()),
                          ],
                        ),
                      ),
                      SizedBox(height: optionVPadding),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                features[0] = false;
                                features[1] = true;
                                features[2] = false;
                                setState(() {});
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: COLOR_PRIMARY),
                                    borderRadius: BorderRadius.circular(15),
                                    color: (features[1])
                                        ? COLOR_PRIMARY
                                        : Colors.transparent),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Ticks',
                              style: _textTheme.subtitle1,
                            ),
                            const Expanded(flex: 1, child: SizedBox.shrink()),
                          ],
                        ),
                      ),
                      SizedBox(height: optionVPadding),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                features[0] = false;
                                features[1] = false;
                                features[2] = true;
                                setState(() {});
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(color: COLOR_PRIMARY),
                                    borderRadius: BorderRadius.circular(15),
                                    color: (features[2])
                                        ? COLOR_PRIMARY
                                        : Colors.transparent),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Price',
                              style: _textTheme.subtitle1,
                            ),
                            const Expanded(flex: 1, child: SizedBox.shrink()),
                          ],
                        ),
                      ),
                      SizedBox(height: screensize.height * 0.05),
                      Text(
                        'Enter Stop Loss Value',
                        style: _textTheme.headline6,
                      ),
                      SizedBox(height: screensize.height * 0.02),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, 0, screensize.width * 0.1, 0),
                        child: TextField(
                          controller: ptController,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type Answer Here...'),
                          style: _textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screensize.height * 0.15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        FeatureNav.finishedStopLoss = false;
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Back'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        FeatureNav.finishedStopLoss = true;
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
