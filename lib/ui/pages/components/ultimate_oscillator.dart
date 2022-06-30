import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ninjastrategy2/datamodel/indicators/ultimate_oscillator_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class UltimateOscillator extends StatefulWidget {
  UltimateOscillatordatamodel dataModel = UltimateOscillatordatamodel();
  UltimateOscillator({Key? key}) : super(key: key);

  @override
  State<UltimateOscillator> createState() => _UltimateOscillatorState();
}

class _UltimateOscillatorState extends State<UltimateOscillator> {
  bool plotOfChart = false;

  TextEditingController fast = TextEditingController();
  TextEditingController slow = TextEditingController();
  TextEditingController intrmdit = TextEditingController();

  @override
  void initState() {
    super.initState();
    plotOfChart = (widget.dataModel.plotOnChart == 'true') ? true : false;

    fast.text = widget.dataModel.fast;
    slow.text = widget.dataModel.slow;
    intrmdit.text = widget.dataModel.intermediate;
  }

  @override
  void dispose() {
    fast.dispose();
    slow.dispose();
    intrmdit.dispose();
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
                    child: Text('Fast', maxLines: 2, style: _textTheme.subtitle1),
                  ),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: fast,
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Fast'),
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
                  Text('Intermediate', style: _textTheme.subtitle1),
                  Container(
                    width: screensize.width * 0.1,
                    color: Colors.transparent,
                    child: TextField(
                      controller: intrmdit,
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Intermediate'),
                      style: _textTheme.subtitle1,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.digitsOnly
                      // ],
                      onChanged: (val) {
                        widget.dataModel.intermediate = val;
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
                      decoration: const InputDecoration(isDense: true, hintText: 'Enter Slow'),
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
