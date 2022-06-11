import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/prior_day_ohlc_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_prior_day_ohlc_value_plot.dart';

class PriorDayOHLC extends StatefulWidget {
  PriorDayOHLCdatamodel dataModel = PriorDayOHLCdatamodel();
  PriorDayOHLC({Key? key}) : super(key: key);

  @override
  State<PriorDayOHLC> createState() => _PriorDayOHLCState();
}

class _PriorDayOHLCState extends State<PriorDayOHLC> {
  bool plotOfChart = false;
  String VPTitle = 'Prior Open';

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Prior Open':
        widget.dataModel.valuePlot = '0';
        break;
      case 'Prior High':
        widget.dataModel.valuePlot = '2';
        break;
      case 'Prior Low':
        widget.dataModel.valuePlot = '3';
        break;
      case 'Prior Close':
        widget.dataModel.valuePlot = '1';
        break;
      default:
        widget.dataModel.valuePlot = '0';
    }
  }

  // TextEditingController nSD = TextEditingController();
  // TextEditingController prd = TextEditingController();
  @override
  void initState() {
    super.initState();
    // nSD.text = widget.dataModel.;
    // prd.text = widget.dataModel.period;
  }

  @override
  void dispose() {
    // nSD.dispose();
    // prd.dispose();
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
                              PriorDayOHLCValuePlotPopUp(
                                  selection: selectValuePlot));
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
