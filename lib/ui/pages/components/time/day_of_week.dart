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
    switch (elm) {
      case 'Sunday':
        widget.dataModel.DayOfWeek = '0';
        break;
      case 'Monday':
        widget.dataModel.DayOfWeek = '1';
        break;
      case 'Tuesday':
        widget.dataModel.DayOfWeek = '2';
        break;
      case 'Wednesday':
        widget.dataModel.DayOfWeek = '3';
        break;
      case 'Thursday':
        widget.dataModel.DayOfWeek = '4';
        break;
      case 'Friday':
        widget.dataModel.DayOfWeek = '5';
        break;
      case 'Saturday':
        widget.dataModel.DayOfWeek = '6';
        break;
      default:
        widget.dataModel.DayOfWeek = '0';
    }
  }

  String revSelectDay(String elm) {
    switch (elm) {
      case '0':
        return 'Sunday';
      case '1':
        return 'Monday';
      case '2':
        return 'Tuesday';
      case '3':
        return 'Wednesday';
      case '4':
        return 'Thursday';
      case '5':
        return 'Friday';
      case '6':
        return 'Saturday';
      default:
        return 'Sunday';
    }
  }

  @override
  void initState() {
    super.initState();
    selectDay(revSelectDay(widget.dataModel.DayOfWeek));
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: compontHeight,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(compontPaddingLeft, 0, compontPaddingRignt, 0),
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
                      await showDialog(context: context, builder: (BuildContext context) => DayofWeekPopUp(selection: selectDay));
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
