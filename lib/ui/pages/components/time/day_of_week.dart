import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/time/day_of_week_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_day_of_week.dart';

class DayofWeek extends StatefulWidget {
  DayofWeekdatamodel dataModel = DayofWeekdatamodel();

  DayofWeek({Key? key}) : super(key: key);

  @override
  State<DayofWeek> createState() => _DayofWeekState();
}

class _DayofWeekState extends State<DayofWeek> {
  String day1 = 'Monday';

  void selectDay(String elm) {
    day1 = elm;
    // switch (elm) {
    //   case 'Lower':
    //     widget.dataModel.valuePlot = '2';
    //     break;
    //   case 'Middle':
    //     widget.dataModel.valuePlot = '1';
    //     break;
    //   case 'Upper':
    //     widget.dataModel.valuePlot = '0';
    //     break;
    //   default:
    //     widget.dataModel.valuePlot = '2';
    // }
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: compontHeight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            compontPaddingLeft, 0, compontPaddingRignt, 0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Day:',
                    style: _textTheme.subtitle1,
                    // textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              DayofWeekPopUp(selection: selectDay));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(day1),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Expanded(
              flex: 1,
              child: Text('No Parameters', style: _textTheme.subtitle1),
            ),
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
