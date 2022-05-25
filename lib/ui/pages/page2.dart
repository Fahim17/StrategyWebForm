import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/page3.dart';

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
          height: bxHeight,
          width: bxWidth,
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
                    'What is your NinjaTrader Strategy name, Trader?',
                    style: _textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type Answer Here...'),
                    style: _textTheme.subtitle1,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.08,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                  child: Text(
                    'What is the number of contracts with which you will trade in each entry?',
                    style: _textTheme.headline6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                  child: TextField(
                    controller: contractController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type Answer Here...'),
                    style: _textTheme.subtitle1,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page3()));
                    },
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
