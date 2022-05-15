import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class Page3 extends StatefulWidget {
  Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController nameController = TextEditingController();
  TextEditingController contractController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    contractController.dispose();
    super.dispose();
  }

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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    titleText,
                    style: _textTheme.headline4,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                  child: Text(
                    'Select the features you want to use in your strategy.',
                    style: _textTheme.headline6,
                  ),
                ),

                SizedBox(
                  height: screensize.height * 0.08,
                ),
//
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Next'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
