import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/compare_data_model.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/adl.dart';
import 'package:ninjastrategy2/ui/pages/components/adx.dart';
import 'package:ninjastrategy2/ui/pages/widgets/basic_component_layout.dart';
import 'package:ninjastrategy2/ui/pages/components/bollinger.dart';
import 'package:ninjastrategy2/ui/pages/components/bop.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';
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

  String e1Title = 'Select';
  String e2Title = 'Select';

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
      default:
        e2 = const Center(child: Text('Select an Element'));
    }
  }

  void finalizeDataModels() {
    Compare x = Compare();
    x.firstObject = e1.dataModel;
    x.secondObject = e2.dataModel;

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
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('Select'),
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
                                  context: context,
                                  builder: (BuildContext context) =>
                                      ComponentsPopUp(
                                          selection: selectElement1));
                              setState(() {});
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                  context: context,
                                  builder: (BuildContext context) =>
                                      ComponentsPopUp(
                                          selection: selectElement2));
                              setState(() {});
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                        color: COLOR_Grey1,
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
                              finalizeDataModels();
                              Navigator.pop(context);
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
