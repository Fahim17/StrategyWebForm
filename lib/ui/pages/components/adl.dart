import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/indicators/adl_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class ADL extends StatefulWidget {
  ADLdatamodel dataModel = ADLdatamodel();

  ADL({Key? key}) : super(key: key);

  @override
  State<ADL> createState() => _ADLState();
}

class _ADLState extends State<ADL> {
  bool plotOfChart = false;
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
            const Expanded(flex: 1, child: SizedBox.shrink()),
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


// Padding(
//       padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text('Plot of Chart', style: _textTheme.subtitle1),
//               InkWell(
//                 onTap: () {
//                   widget.plotOfChart = !widget.plotOfChart;
//                   setState(() {});
//                 },
//                 child: Container(
//                   height: 30,
//                   width: 30,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: COLOR_PRIMARY, width: 2),
//                       borderRadius: BorderRadius.circular(10),
//                       color: (widget.plotOfChart)
//                           ? COLOR_PRIMARY
//                           : Colors.transparent),
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 20),
//             color: COLOR_Grey1,
//             height: 2,
//           ),
//         ],
//       ),
//     );