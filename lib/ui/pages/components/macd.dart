import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/macd_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_macd_value_plot.dart';

class MACD extends StatefulWidget {
  MACDdatamodel dataModel = MACDdatamodel();
  MACD({Key? key}) : super(key: key);

  @override
  State<MACD> createState() => _MACDState();
}

class _MACDState extends State<MACD> {
  bool plotOfChart = false;
  String VPTitle = 'Avg';

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Avg':
        widget.dataModel.valuePlot = '0';
        break;
      case 'MACD':
        widget.dataModel.valuePlot = '1';
        break;
      case 'Diff':
        widget.dataModel.valuePlot = '2';
        break;
      default:
        widget.dataModel.valuePlot = '0';
    }
  }

  TextEditingController fast = TextEditingController();
  TextEditingController slow = TextEditingController();
  TextEditingController smoth = TextEditingController();

  @override
  void initState() {
    super.initState();
    fast.text = widget.dataModel.fast;
    slow.text = widget.dataModel.slow;
    smoth.text = widget.dataModel.smooth;
  }

  @override
  void dispose() {
    fast.dispose();
    slow.dispose();
    smoth.dispose();
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
                              MACDValuePlotPopUp(selection: selectValuePlot));
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
                    child:
                        Text('Fast', maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: fast,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Fast'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.fast = val;
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
                  Text('Slow', style: _textTheme.subtitle1),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: slow,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Slow'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.slow = val;
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
                  Text('Smooth', style: _textTheme.subtitle1),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: slow,
                      decoration: const InputDecoration(
                          isDense: true, hintText: 'Enter Smooth'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.smooth = val;
                      },
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
