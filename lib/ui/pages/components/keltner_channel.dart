import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/keltner_channel_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';
import 'package:ninjastrategy2/ui/pages/components/valueplots/popup_keltnerchannel_value_plot.dart';

class KeltnerChannel extends StatefulWidget {
  KeltnerChanneldatamodel dataModel = KeltnerChanneldatamodel();
  KeltnerChannel({Key? key}) : super(key: key);

  @override
  State<KeltnerChannel> createState() => _KeltnerChannelState();
}

class _KeltnerChannelState extends State<KeltnerChannel> {
  bool plotOfChart = false;
  String VPTitle = 'Upper';

  void selectValuePlot(String elm) {
    VPTitle = elm;
    switch (elm) {
      case 'Lower':
        widget.dataModel.valuePlot = '2';
        break;
      case 'Midline':
        widget.dataModel.valuePlot = '1';
        break;
      case 'Upper':
        widget.dataModel.valuePlot = '0';
        break;
      default:
        widget.dataModel.valuePlot = '2';
    }
  }

  String revSelectValuePlot(String elm) {
    switch (elm) {
      case '2':
        return 'Lower';
      case '1':
        return 'Midline';
      case '0':
        return 'Upper';
      default:
        return 'Lower';
    }
  }

  TextEditingController offsetMulti = TextEditingController();
  TextEditingController prd = TextEditingController();
  @override
  void initState() {
    super.initState();
    plotOfChart = (widget.dataModel.plotOnChart == 'true') ? true : false;
    selectValuePlot(revSelectValuePlot(widget.dataModel.valuePlot));

    offsetMulti.text = widget.dataModel.offsetMultiplier;
    prd.text = widget.dataModel.period;
  }

  @override
  void dispose() {
    offsetMulti.dispose();
    prd.dispose();
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
                          builder: (BuildContext context) => KeltnerChannelValuePlotPopUp(selection: selectValuePlot));
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
                    child: Text('Offset Multiplier', maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: offsetMulti,
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter No. of S.D.'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.offsetMultiplier = val;
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
                  Text('Period', style: _textTheme.subtitle1),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: prd,
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Period'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.period = val;
                      },
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
