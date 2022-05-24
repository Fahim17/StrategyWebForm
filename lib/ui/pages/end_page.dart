import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/page2.dart';

class EndPage extends StatelessWidget {
  EndPage({Key? key}) : super(key: key);

  String description = 'Thank You';

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
          child: Column(
            children: [
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
              Padding(
                padding: EdgeInsets.fromLTRB(
                    screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                child: Text(
                  description,
                  style: _textTheme.headline6,
                ),
              ),
              SizedBox(
                height: screensize.height * 0.15,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Do It Again'))
            ],
          ),
        ),
      ),
    );
  }
}
