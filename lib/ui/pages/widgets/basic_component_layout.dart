import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class BasicComponentLayout extends StatefulWidget {
  Widget row1;
  Widget row2;
  Widget row3;
  Widget row4;
  Widget row5;

  BasicComponentLayout({
    Key? key,
    required this.row1,
    required this.row2,
    required this.row3,
    required this.row4,
    required this.row5,
  }) : super(key: key);

  @override
  State<BasicComponentLayout> createState() => _BasicComponentLayoutState();
}

class _BasicComponentLayoutState extends State<BasicComponentLayout> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    TextTheme _textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Expanded(flex: 1, child: widget.row1),
            Expanded(flex: 1, child: widget.row2),
            Container(
              color: COLOR_Grey1,
              height: 2,
            ),
            Expanded(flex: 1, child: widget.row3),
            Expanded(flex: 1, child: widget.row4),
            Expanded(flex: 1, child: widget.row5),
            Container(
              color: COLOR_Grey1,
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
