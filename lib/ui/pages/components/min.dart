import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/indicators/min_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class MIN extends StatefulWidget {
  MINdatamodel dataModel = MINdatamodel();
  MIN({Key? key}) : super(key: key);

  @override
  State<MIN> createState() => _MINState();
}

class _MINState extends State<MIN> {
  bool plotOfChart = false;
  TextEditingController prd = TextEditingController();
  @override
  void initState() {
    super.initState();
    prd.text = widget.dataModel.period;
  }

  @override
  void dispose() {
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
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Period', style: _textTheme.subtitle1),
                  SizedBox(
                    width: screensize.width * 0.1,
                    child: TextField(
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Period'),
                      controller: prd,
                      style: _textTheme.subtitle1,
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
