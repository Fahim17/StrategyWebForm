import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/page3.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          height: screensize.height * bxHeightRatio,
          width: screensize.width * bxWidthRatio,
          decoration: bxDecorations,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                Center(
                  child: Text(
                    titleText,
                    style: _textTheme.headline4,
                  ),
                ),
                SizedBox(
                  height: screensize.height * 0.10,
                ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'What is your NinjaTrader Strategy name, Trader?',
                        style: _textTheme.headline6,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                //   child: Text(
                //     'What is your NinjaTrader Strategy name, Trader?',
                //     style: _textTheme.headline6,
                //   ),
                // ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    Expanded(
                      flex: 4,
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type Answer Here...'),
                        style: _textTheme.subtitle1,
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                //   child: TextField(
                //     controller: nameController,
                //     decoration: const InputDecoration(
                //         border: InputBorder.none,
                //         hintText: 'Type Answer Here...'),
                //     style: _textTheme.subtitle1,
                //   ),
                // ),
                SizedBox(
                  height: screensize.height * 0.08,
                ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    Expanded(
                      flex: 4,
                      child: Text(
                        'What is the number of contracts with which you will trade in each entry?',
                        style: _textTheme.headline6,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                //   child: Text(
                //     'What is the number of contracts with which you will trade in each entry?',
                //     style: _textTheme.headline6,
                //   ),
                // ),
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                    Expanded(
                      flex: 4,
                      child: TextField(
                        controller: contractController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type Answer Here...'),
                        style: _textTheme.subtitle1,
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox.shrink()),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(
                //       screensize.width * 0.1, 0, screensize.width * 0.1, 0),
                //   child: TextField(
                //     controller: contractController,
                //     decoration: const InputDecoration(
                //         border: InputBorder.none,
                //         hintText: 'Type Answer Here...'),
                //     style: _textTheme.subtitle1,
                //   ),
                // ),
                SizedBox(
                  height: screensize.height * 0.05,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (nameController.text.isNotEmpty &&
                          contractController.text.isNotEmpty) {
                        MainDataModelInstance.mainData.name =
                            nameController.text;
                        MainDataModelInstance.mainData.defaults
                            .contractsPerEntry = contractController.text;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3()));

                        // ScaffoldMessenger.of(context)
                        //     .showSnackBar(const SnackBar(
                        //   content: Text('Excellent!!!'),
                        //   backgroundColor: COLOR_PRIMARY,
                        // ));
                        // Fluttertoast.showToast(
                        //     msg: "Excellent!!!",
                        //     toastLength: Toast.LENGTH_LONG,
                        //     gravity: ToastGravity.TOP_RIGHT,
                        //     timeInSecForIosWeb: 1,
                        //     webShowClose: true,
                        //     backgroundColor: Colors.green,
                        //     textColor: Colors.white,
                        //     fontSize: 16.0);
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Answer all the Questions'),
                          backgroundColor: COLOR_Grey1,
                        ));
                        // Fluttertoast.showToast(
                        //     msg: "Answer all the Questions",
                        //     toastLength: Toast.LENGTH_LONG,
                        //     gravity: ToastGravity.TOP_RIGHT,
                        //     timeInSecForIosWeb: 1,
                        //     webShowClose: true,
                        //     backgroundColor: Colors.red,
                        //     textColor: Colors.white,
                        //     fontSize: 16.0);
                      }
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
