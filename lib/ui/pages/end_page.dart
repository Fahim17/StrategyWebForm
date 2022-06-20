import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/services/apiCall.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/page1.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';

class EndPage extends StatelessWidget {
  EndPage({Key? key}) : super(key: key);

  String description = 'Strategy Generation Complete!!';

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
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                Text(
                  titleText,
                  style: _textTheme.headline4,
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: _textTheme.headline6,
                ),
                SizedBox(
                  height: screensize.height * 0.15,
                ),
                // SummarizedInfo(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Page1(),
                              ),
                              (route) => false);
                          // MainDataModelInstance.mainData.prepareFinalData();
                          // print(jsonEncode(MainDataModelInstance.mainData.toJson()));
                        },
                        child: const Text('Do It Again')),
                    ElevatedButton(
                        onPressed: () async {
                          var res = await ApiCall().submitForm();
                        },
                        child: const Text('Submit & Download')),
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

class SummarizedInfo extends StatelessWidget {
  SummarizedInfo({Key? key}) : super(key: key) {
    MainDataModelInstance.mainData.name = 'Bishal naam  ';
    MainDataModelInstance.mainData.desc = '''But it’s often appropriate to summarize a whole article or chapter 
        if it is especially relevant to your own research, or to provide an 
        overview of a source before you analyze or critique it. In any case, 
        the goal of summarizing is to give your reader a clear understanding of 
        the original source. Follow the five steps outlined below to write a 
        good summary.''';
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${MainDataModelInstance.mainData.name}',
              style: _textTheme.subtitle1,
            ),
            SizedBox(
              height: 20,
              child: FittedBox(
                child: Text(
                  'Description: ${MainDataModelInstance.mainData.desc}',
                  style: _textTheme.subtitle1,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
