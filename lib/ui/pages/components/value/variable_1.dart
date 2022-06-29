import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/value/variable_data_model.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_variable1.dart';

class Variable1 extends StatefulWidget {
  Variabledatamodel dataModel = Variabledatamodel();
  Variable1({Key? key}) : super(key: key);

  @override
  State<Variable1> createState() => _Variable1State();
}

class _Variable1State extends State<Variable1> {
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
  // TextEditingController minValController = TextEditingController();
  // TextEditingController descController = TextEditingController();

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
    // minValController.dispose();
    // descController.dispose();
    super.dispose();
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
            // Expanded(
            //   flex: 1,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Expanded(
            //           flex: 1,
            //           child: Text('Name', style: _textTheme.subtitle1)),
            //       Expanded(
            //         flex: 5,
            //         child: TextField(
            //           controller: nameController,
            //           decoration: const InputDecoration(
            //               isDense: true, hintText: 'Enter Name'),
            //           style: _textTheme.subtitle1,
            //           // inputFormatters: <TextInputFormatter>[
            //           //   FilteringTextInputFormatter.digitsOnly
            //           // ],
            //           onChanged: (val) {
            //             widget.dataModel.name = val;
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Text('Value', style: _textTheme.subtitle1)),

                  Expanded(
                    flex: 5,
                    child: TextField(
                      controller: valueController,
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Value'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.value = val;
                      },
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox.shrink()),

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
            // Expanded(
            //   flex: 1,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Expanded(
            //           flex: 1,
            //           child:
            //               Text('Minimum Value', style: _textTheme.subtitle1)),
            //       // const SizedBox(width: 10),
            //       Expanded(
            //         flex: 1,
            //         child: TextField(
            //           controller: minValController,
            //           decoration: const InputDecoration(
            //               isDense: true, hintText: 'Enter Minimum Value'),
            //           style: _textTheme.subtitle1,
            //           // inputFormatters: <TextInputFormatter>[
            //           //   FilteringTextInputFormatter.digitsOnly
            //           // ],
            //           onChanged: (val) {
            //             widget.dataModel.period = val;
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Expanded(
            //           flex: 1,
            //           child: Text('Description', style: _textTheme.subtitle1)),
            //       // const SizedBox(width: 10),
            //       Expanded(
            //         flex: 1,
            //         child: TextField(
            //           controller: descController,
            //           decoration: const InputDecoration(
            //               isDense: true, hintText: 'Enter Description'),
            //           style: _textTheme.subtitle1,
            //           // inputFormatters: <TextInputFormatter>[
            //           //   FilteringTextInputFormatter.digitsOnly
            //           // ],
            //           onChanged: (val) {
            //             widget.dataModel.period = val;
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
