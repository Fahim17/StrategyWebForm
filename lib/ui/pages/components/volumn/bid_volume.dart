import 'package:flutter/material.dart';
import 'package:ninjastrategy2/datamodel/volumn/bid_vol_datamodel.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class BidVolume extends StatefulWidget {
  BidVolumedatamodel dataModel = BidVolumedatamodel();

  BidVolume({Key? key}) : super(key: key);

  @override
  State<BidVolume> createState() => _BidVolumeState();
}

class _BidVolumeState extends State<BidVolume> {
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
