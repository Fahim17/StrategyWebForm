import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/compare_data_model.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/featurenav.dart';
import 'package:ninjastrategy2/ui/pages/condition_form.dart';

class ExSConditionListPage extends StatefulWidget {
  ExSConditionListPage({Key? key}) : super(key: key);

  @override
  State<ExSConditionListPage> createState() => _ExSConditionListPageState();
}

class _ExSConditionListPageState extends State<ExSConditionListPage> {
  List<bool> features = [true, false];

  // TextEditingController ptController = TextEditingController();

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
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              features[0] = true;
                              features[1] = false;
                              MainDataModelInstance
                                  .mainData.exsC.conditionType = '11';
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
                          const SizedBox(width: 10),
                          Text(
                            'If Any',
                            style: _textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: optionVPadding),
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              features[0] = false;
                              features[1] = true;
                              MainDataModelInstance
                                  .mainData.exsC.conditionType = '12';
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
                        onPressed: () async {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConditionFormPage(
                                        frompage: 'exs',
                                      )));
                          setState(() {});
                        },
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
                SizedBox(
                  width: double.infinity,
                  height: screensize.height * 0.45,
                  child: SingleChildScrollView(
                    child: Column(
                        children: MainDataModelInstance.mainData.exsC.compares
                            .map((e) => exsConditionRow(e: e))
                            .toList()),
                  ),
                ),
                const SizedBox(height: 10),
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
                        FeatureNav.finishedShortTrade = true;
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

class exsConditionRow extends StatelessWidget {
  Compare e;
  exsConditionRow({Key? key, required this.e}) : super(key: key);

  double rowTextPadding = 10;
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: rowTextPadding),
              decoration: BoxDecoration(
                color: COLOR_White1,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  e.firstObject.elementName,
                  style: _textTheme.subtitle2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: rowTextPadding),
              decoration: BoxDecoration(
                color: COLOR_White1,
                // borderRadius: const BorderRadius.only(
                //   topLeft: Radius.circular(5),
                //   bottomLeft: Radius.circular(5),
                // ),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  e.operationName,
                  style: _textTheme.subtitle2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: rowTextPadding),
              decoration: BoxDecoration(
                color: COLOR_White1,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  e.secondObject.elementName,
                  style: _textTheme.subtitle2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
