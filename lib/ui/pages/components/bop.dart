import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class BOP extends StatefulWidget {
  bool plotOfChart = false;
  BOP({Key? key}) : super(key: key);

  @override
  State<BOP> createState() => _BOPState();
}

class _BOPState extends State<BOP> {
  TextEditingController tx1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            // width: screensize.width * 0.2,
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Smooth', style: _textTheme.subtitle1),
              Container(
                width: screensize.width * 0.1,
                color: Colors.transparent,
                child: TextField(
                  controller: tx1,
                  decoration: const InputDecoration(
                      isDense: true, hintText: 'Enter Period'),
                  style: _textTheme.subtitle1,
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
