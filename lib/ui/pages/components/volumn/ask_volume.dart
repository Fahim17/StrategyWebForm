import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/price/ask_datamodel.dart';
import 'package:ninjastrategy2/datamodel/volumn/ask_vol_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class AskVolumn extends StatefulWidget {
  AskVolumedatamodel dataModel = AskVolumedatamodel();

  AskVolumn({Key? key}) : super(key: key);

  @override
  State<AskVolumn> createState() => _AskVolumnState();
}

class _AskVolumnState extends State<AskVolumn> {
  bool plotOfChart = false;
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
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Expanded(
              flex: 1,
              child: Text('No Parameters', style: _textTheme.subtitle1),
            ),
            Container(
              color: COLOR_Divider,
              height: 2,
            ),
            const Expanded(flex: 1, child: SizedBox.shrink()),
            Expanded(
              flex: 1,
              child: Text('No Parameters', style: _textTheme.subtitle1),
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
