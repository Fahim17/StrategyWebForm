import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/zigzag_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_zigzag_deviation_type.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_zigzag_value_plot.dart';

class ZigZag extends StatefulWidget {
  ZigZagdatamodel dataModel = ZigZagdatamodel();
  ZigZag({Key? key}) : super(key: key);

  @override
  State<ZigZag> createState() => _ZigZagState();
}

class _ZigZagState extends State<ZigZag> {
  bool plotOfChart = false;
  bool useHighLow = false;
  String DTTitle = 'Points';
  String VPTitle = 'ZigZag High';

  TextEditingController dvitinVal = TextEditingController();

  void selectDeviationType(String elm) {
    DTTitle = elm;
    switch (elm) {
      case 'Point':
        widget.dataModel.deviationType = '0';
        break;
      case 'Percent':
        widget.dataModel.deviationType = '1';
        break;
      default:
        widget.dataModel.deviationType = '0';
    }
  }

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'ZigZag High':
        widget.dataModel.valuePlot = '0';
        break;
      case 'ZigZag Low':
        widget.dataModel.valuePlot = '1';
        break;
      default:
        widget.dataModel.valuePlot = '0';
    }
  }

  @override
  void initState() {
    super.initState();
    dvitinVal.text = widget.dataModel.deviationValue;
  }

  @override
  void dispose() {
    dvitinVal.dispose();
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
                              ZigZagValuePlotPopUp(selection: selectValuePlot));
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
                  Text('Deviation Type', style: _textTheme.subtitle1),
                  ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              ZigZagDeviationTypePopUp(
                                  selection: selectDeviationType));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(DTTitle),
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
                    child: Text('Deviation Value',
                        maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: dvitinVal,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Fast'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.deviationValue = val;
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
                  Text('Use High Low', style: _textTheme.subtitle1),
                  InkWell(
                    onTap: () {
                      useHighLow = !useHighLow;
                      widget.dataModel.useHighLow = useHighLow.toString();
                      setState(() {});
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          border: Border.all(color: COLOR_PRIMARY, width: 2),
                          borderRadius: BorderRadius.circular(10),
                          color: (useHighLow)
                              ? COLOR_PRIMARY
                              : Colors.transparent),
                    ),
                  ),
                ],
              ),
            ),
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
