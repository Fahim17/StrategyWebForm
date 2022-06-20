import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/time/date_value_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:intl/intl.dart';

class DateValue extends StatefulWidget {
  DateValuedatamodel dataModel = DateValuedatamodel();

  DateValue({Key? key}) : super(key: key);

  @override
  State<DateValue> createState() => _DateValueState();
}

class _DateValueState extends State<DateValue> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat.yMMMMd().format(_selectedDate);
  }

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
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
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: dateController,
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
                          showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1980),
                                  lastDate: DateTime(2050))
                              .then((pickedDate) {
                            if (pickedDate == null) {
                              return;
                            }
                            _selectedDate = pickedDate;
                            dateController.text =
                                DateFormat.yMMMMd().format(_selectedDate);
                            widget.dataModel.Date =
                                '${pickedDate.day}-${pickedDate.month}-${pickedDate.year}';
                            setState(() {});
                          });
                        },
                        icon: const Icon(
                          Icons.calendar_month_rounded,
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
