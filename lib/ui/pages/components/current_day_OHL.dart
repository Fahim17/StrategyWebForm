import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/current_day_OHL_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_current_day_ohl_value_plot.dart';

class CurrentDayOHL extends StatefulWidget {
  CurrentDayOHLdatamodel dataModel = CurrentDayOHLdatamodel();
  CurrentDayOHL({Key? key}) : super(key: key);

  @override
  State<CurrentDayOHL> createState() => _CurrentDayOHLState();
}

class _CurrentDayOHLState extends State<CurrentDayOHL> {
  bool plotOfChart = false;
  String VPTitle = 'Current Open';

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Current Open':
        widget.dataModel.valuePlot = '0';
        break;
      case 'Current High':
        widget.dataModel.valuePlot = '1';
        break;
      case 'Current Low':
        widget.dataModel.valuePlot = '2';
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
                              CurrentDayOHLValuePlotPopUp(
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
