import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class ADL extends StatefulWidget {
  bool plotOfChart = false;
  ADL({Key? key}) : super(key: key);

  @override
  State<ADL> createState() => _ADLState();
}

class _ADLState extends State<ADL> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Plot of Chart', style: _textTheme.subtitle1),
              InkWell(
                onTap: () {
                  widget.plotOfChart = !widget.plotOfChart;
                  setState(() {});
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: COLOR_PRIMARY, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: (widget.plotOfChart)
                          ? COLOR_PRIMARY
                          : Colors.transparent),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: COLOR_Grey1,
            height: 2,
          ),
        ],
      ),
    );
  }
}