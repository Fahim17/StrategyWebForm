import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/featurenav.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../services/apiCall.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);

  String description =
      'The GS-1931 algorithm will accompany you during the process of creating ur strategy and will generate the code thanks to its AI.';

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
                const SizedBox(height: 10),
                FeatureNav.getProgress(),
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    titleText,
                    style: _textTheme.headline4,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.15,
                ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        description,
                        style: _textTheme.headline6,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                SizedBox(
                  height: screensize.height * 0.15,
                ),
                ElevatedButton(
                    onPressed: () async {
                      FeatureNav.increaseFinishedSteps();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                    child: const Text('Let\'s Get Started'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
