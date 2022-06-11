import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/swing_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_swing_value_plot.dart';

class Swing extends StatefulWidget {
  Swingdatamodel dataModel = Swingdatamodel();
  Swing({Key? key}) : super(key: key);

  @override
  State<Swing> createState() => _SwingState();
}

class _SwingState extends State<Swing> {
  bool plotOfChart = false;
  String VPTitle = 'Swing High';

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Swing High':
        widget.dataModel.valuePlot = '0';
        break;
      case 'Swing Low':
        widget.dataModel.valuePlot = '1';
        break;
      default:
        widget.dataModel.valuePlot = '0';
    }
  }

  TextEditingController strgth = TextEditingController();
  @override
  void initState() {
    super.initState();
    strgth.text = widget.dataModel.strength;
  }

  @override
  void dispose() {
    strgth.dispose();
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
                  Text('Plot of Chart', style: _textTheme.subtitle1),
                  InkWell(
                    onTap: () {
                      plotOfChart = !plotOfChart;
                      widget.dataModel.plotOnChart = plotOfChart.toString();
                      setState(() {});
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: COLOR_PRIMARY, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          color: (plotOfChart)
                              ? COLOR_PRIMARY
                              : Colors.transparent),
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
                  Text('Value Plot', style: _textTheme.subtitle1),
                  ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              SwingValuePlotPopUp(selection: selectValuePlot));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(VPTitle),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Strength',
                        maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: strgth,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Strength'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.strength = val;
                      },
                    ),
                  ),
                ],
              ),
            ),
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
