import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class KeltnerChannelValuePlotPopUp extends StatefulWidget {
  Function selection;
  KeltnerChannelValuePlotPopUp({Key? key, required this.selection}) : super(key: key);

  @override
  State<KeltnerChannelValuePlotPopUp> createState() => _KeltnerChannelValuePlotPopUpState();
}

class _KeltnerChannelValuePlotPopUpState extends State<KeltnerChannelValuePlotPopUp> {
  List allValuePlots = [
    'Lower',
    'Midline',
    'Upper',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    final Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      title: Center(
        child: Text(
          "Elements",
          style: _textTheme.headline5?.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
      content: SizedBox(
        width: bxWidth * 0.8,
        height: bxHeight * 0.5,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: (screenSize.width / screenSize.height),
                ),
                shrinkWrap: true,
                itemCount: allValuePlots.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: COLOR_PRIMARY,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        widget.selection(allValuePlots[index]);
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child:
                            FittedBox(child: Text(allValuePlots[index], style: _textTheme.subtitle1?.copyWith(color: Colors.white))),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
