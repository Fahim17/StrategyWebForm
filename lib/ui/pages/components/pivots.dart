import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/fibbonacci_pivots_datamodel.dart';
import 'package:ninjastrategy2/datamodel/indicators/pivots_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_fibbonacci_pivots_HCL.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_fibbonacci_pivots_pivot_range.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_fibbonacci_pivots_value_plot.dart';

class Pivots extends StatefulWidget {
  Pivotsdatamodel dataModel = Pivotsdatamodel();
  Pivots({Key? key}) : super(key: key);

  @override
  State<Pivots> createState() => _PivotsState();
}

class _PivotsState extends State<Pivots> {
  bool plotOfChart = false;
  String PRTitle = 'Daily';
  String HCLTitle = 'Intraday';
  String VPTitle = 'Pp';

  void selectPivotRange(String elm) {
    PRTitle = elm;
    switch (elm) {
      case 'Daily':
        widget.dataModel.pivotRange = '0';
        break;
      case 'Weekly':
        widget.dataModel.pivotRange = '1';
        break;
      case 'Monthly':
        widget.dataModel.pivotRange = '2';
        break;
      default:
        widget.dataModel.pivotRange = '0';
    }
  }

  void selectHLCCalcMode(String elm) {
    HCLTitle = elm;
    switch (elm) {
      case 'Intraday':
        widget.dataModel.HLCCalculationMode = '0';
        break;
      case 'Daily Bars':
        widget.dataModel.HLCCalculationMode = '1';
        break;
      default:
        widget.dataModel.HLCCalculationMode = '0';
    }
  }

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Pp':
        widget.dataModel.valuePlot = '0';
        break;
      case 'R1':
        widget.dataModel.valuePlot = '1';
        break;
      case 'R2':
        widget.dataModel.valuePlot = '2';
        break;
      case 'R3':
        widget.dataModel.valuePlot = '3';
        break;
      case 'S1':
        widget.dataModel.valuePlot = '4';
        break;
      case 'S2':
        widget.dataModel.valuePlot = '5';
        break;
      case 'S3':
        widget.dataModel.valuePlot = '6';
        break;
      default:
        widget.dataModel.valuePlot = '0';
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Plot on Chart', style: _textTheme.subtitle1),
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
                          color: (plotOfChart) ? COLOR_PRIMARY : Colors.transparent),
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
                          builder: (BuildContext context) => FibbonacciPivotsValuePlotPopUp(selection: selectValuePlot));
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
                  Text('Pivot Range', style: _textTheme.subtitle1),
                  ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => FibbonacciPivotsPivotRangePopUp(selection: selectPivotRange));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(PRTitle),
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
                  Text('HLC Calculation Mode', style: _textTheme.subtitle1),
                  ElevatedButton(
                    onPressed: () async {
                      await showDialog(
                          context: context, builder: (BuildContext context) => FibboPivotsHCLPopUp(selection: selectHLCCalcMode));
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(HCLTitle),
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
          ],
        ),
      ),
    );
  }
}
