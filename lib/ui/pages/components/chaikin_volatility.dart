import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/chaikin_oscillator_datamodel.dart';
import 'package:ninjastrategy2/datamodel/indicators/chaikin_volatility_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class ChaikinVolatility extends StatefulWidget {
  ChaikinVolatilitydatamodel dataModel = ChaikinVolatilitydatamodel();
  ChaikinVolatility({Key? key}) : super(key: key);

  @override
  State<ChaikinVolatility> createState() => _ChaikinVolatilityState();
}

class _ChaikinVolatilityState extends State<ChaikinVolatility> {
  bool plotOfChart = false;

  TextEditingController movingAvgPeriod = TextEditingController();
  TextEditingController rateOfChangePeriod = TextEditingController();
  @override
  void initState() {
    super.initState();
    movingAvgPeriod.text = widget.dataModel.movingAvgPeriod;
    rateOfChangePeriod.text = widget.dataModel.rateOfChangePeriod;
  }

  @override
  void dispose() {
    movingAvgPeriod.dispose();
    rateOfChangePeriod.dispose();
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
                  Expanded(
                    flex: 2,
                    child: Text('Moving Avg. Period', maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: screensize.width * 0.1,
                      color: Colors.transparent,
                      child: TextField(
                        controller: movingAvgPeriod,
                        decoration: const InputDecoration(isDense: true, hintText: 'Enter Moving Avg. Period.'),
                        style: _textTheme.subtitle1,
                        // inputFormatters: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                        onChanged: (val) {
                          widget.dataModel.movingAvgPeriod = val;
                        },
                      ),
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
                    flex: 2,
                    child: Text('Rate of Change Period', style: _textTheme.subtitle1),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: screensize.width * 0.1,
                      color: Colors.transparent,
                      child: TextField(
                        controller: rateOfChangePeriod,
                        decoration: const InputDecoration(isDense: true, hintText: 'Enter Rate of Change Period'),
                        style: _textTheme.subtitle1,
                        // inputFormatters: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                        onChanged: (val) {
                          widget.dataModel.rateOfChangePeriod = val;
                        },
                      ),
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
