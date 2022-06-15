import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ninjastrategy2/datamodel/time/time_value_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class TimeValue extends StatefulWidget {
  TimeValuedatamodel dataModel = TimeValuedatamodel();

  TimeValue({Key? key}) : super(key: key);

  @override
  State<TimeValue> createState() => _TimeValueState();
}

class _TimeValueState extends State<TimeValue> {
  TimeOfDay timeSelected = TimeOfDay.now();
  TextEditingController timeController = TextEditingController();

  String timeFormater(TimeOfDay theTime) {
    DateTime _selectedTime = DateTime(2022, 1, 1, theTime.hour, theTime.minute);
    return DateFormat.jm().format(_selectedTime);

    // if (theTime.hour > 12) {
    //   return '${timeSelected.hour % 12} : ${timeSelected.minute} PM';
    // } else {
    //   return '${timeSelected.hour} : ${timeSelected.minute} AM';
    // }
  }

  @override
  void initState() {
    super.initState();
    timeController.text = timeFormater(timeSelected);
  }

  @override
  void dispose() {
    timeController.dispose();
    super.dispose();
  }

  bool plotOfChart = false;
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
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: timeController,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Date Value'),
                      style: _textTheme.subtitle1,
                      enabled: false,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          showTimePicker(
                            context: context,
                            initialTime: timeSelected,
                            initialEntryMode: TimePickerEntryMode.dial,
                          ).then((value) {
                            if (value == null) {
                              return;
                            }
                            timeSelected = value;
                            timeController.text = timeFormater(timeSelected);
                            setState(() {});
                          });
                        },
                        icon: const Icon(
                          Icons.access_time_sharp,
                          color: COLOR_PRIMARY,
                        )),
                  )
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
