import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/value/input_data_model.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_variable1.dart';

class Input1 extends StatefulWidget {
  Inputdatamodel dataModel = Inputdatamodel();
  Input1({Key? key}) : super(key: key);

  @override
  State<Input1> createState() => _Input1State();
}

class _Input1State extends State<Input1> {
  // bool plotOfChart = false;
  // String VPTitle = 'Integer';

  // void selectValueType(String elm) {
  //   VPTitle = elm;
  //   switch (elm) {
  //     case 'Integer':
  //       widget.dataModel.valuePlot = '2';
  //       break;
  //     case 'Double':
  //       widget.dataModel.valuePlot = '1';
  //       break;
  //     case 'Time':
  //       widget.dataModel.valuePlot = '0';
  //       break;
  //     default:
  //       widget.dataModel.valuePlot = '2';
  //   }
  // }

  TextEditingController nameController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // nameController.text = '';
    // valueController.text = widget.dataModel.period;
  }

  @override
  void dispose() {
    nameController.dispose();
    valueController.dispose();
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Name', style: _textTheme.subtitle1)),
                  // const SizedBox(width: 10),
                  Expanded(
                    flex: 5,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Name'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.name = val;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Value', style: _textTheme.subtitle1)),
                  // const SizedBox(width: 13),
                  Expanded(
                    flex: 5,
                    child: TextField(
                      controller: valueController,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Value'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.value = val;
                      },
                    ),
                  ),
                  // const SizedBox(width: 10),
                  // ElevatedButton(
                  //   onPressed: () async {
                  //     await showDialog(
                  //         context: context,
                  //         builder: (BuildContext context) =>
                  //             Variable1PlotPopUp(selection: selectValueType));
                  //     setState(() {});
                  //   },
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 10),
                  //     child: Text(VPTitle),
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
            const Expanded(flex: 1, child: SizedBox.shrink()),
            const Expanded(flex: 1, child: SizedBox.shrink()),
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
