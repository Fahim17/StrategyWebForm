import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/featurenav.dart';

class ExSConditionListPage extends StatefulWidget {
  ExSConditionListPage({Key? key}) : super(key: key);

  @override
  State<ExSConditionListPage> createState() => _ExSConditionListPageState();
}

class _ExSConditionListPageState extends State<ExSConditionListPage> {
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
          height: bxHeight,
          width: bxWidth,
          decoration: bxDecorations,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Text(
                    titleText,
                    style: _textTheme.headline4,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Exit Short Conditions',
                      style: _textTheme.headline6,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Condition Type',
                      style: _textTheme.subtitle1,
                    ),
                    SizedBox(height: optionVPadding),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(screensize.width * 0.22, 0, 0, 0),
                      child: Row(
                        children: [
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
                                  borderRadius: BorderRadius.circular(15),
                                  color: (features[1])
                                      ? COLOR_PRIMARY
                                      : Colors.transparent),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'If Any',
                            style: _textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: optionVPadding),
                    Padding(
                      padding:
                          EdgeInsets.fromLTRB(screensize.width * 0.22, 0, 0, 0),
                      child: Row(
                        children: [
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
                                  borderRadius: BorderRadius.circular(15),
                                  color: (features[2])
                                      ? COLOR_PRIMARY
                                      : Colors.transparent),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'If All',
                            style: _textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screensize.height * 0.05),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Condition List',
                        style: _textTheme.subtitle1,
                      ),
                      IconButton(
                        onPressed: () {},
                        color: COLOR_Green1,
                        icon: const Icon(Icons.add_circle_rounded),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: COLOR_Grey2,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              'Element 1',
                              style: _textTheme.subtitle1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: COLOR_Grey2,
                            // borderRadius: const BorderRadius.only(
                            //   topLeft: Radius.circular(5),
                            //   bottomLeft: Radius.circular(5),
                            // ),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              'Symbol',
                              style: _textTheme.subtitle1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: COLOR_Grey2,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          child: Center(
                            child: Text(
                              'Element 2',
                              style: _textTheme.subtitle1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    color: Colors.blueGrey,
                    width: 50,
                    height: 50,
                  ),
                ),
                SizedBox(height: screensize.height * 0.15),
                ElevatedButton(
                  onPressed: () {
                    FeatureNav.finishedShortTrade = true;
                    FeatureNav.runPageRouting(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Next'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
