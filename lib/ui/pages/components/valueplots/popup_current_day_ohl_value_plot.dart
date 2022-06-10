import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class CurrentDayOHLValuePlotPopUp extends StatefulWidget {
  Function selection;
  CurrentDayOHLValuePlotPopUp({Key? key, required this.selection})
      : super(key: key);

  @override
  State<CurrentDayOHLValuePlotPopUp> createState() =>
      _CurrentDayOHLValuePlotPopUpState();
}

class _CurrentDayOHLValuePlotPopUpState
    extends State<CurrentDayOHLValuePlotPopUp> {
  List allValuePlots = [
    'Current Open',
    'Current High',
    'Current Low',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    final Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      title: Center(
        child: Text(
          "Elements",
          style: _textTheme.headline5?.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
      content: SizedBox(
        width: bxWidth * 0.8,
        height: bxHeight * 0.5,
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: (screenSize.width / screenSize.height),
                ),
                shrinkWrap: true,
                itemCount: allValuePlots.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: COLOR_PRIMARY,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        widget.selection(allValuePlots[index]);
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: FittedBox(
                            child: Text(allValuePlots[index],
                                style: _textTheme.subtitle1
                                    ?.copyWith(color: Colors.white))),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CusItem extends StatefulWidget {
//   ComponentsModel item;
//   bool marked;
//   CusItem({Key? key, required this.item, required this.marked}) : super(key: key);

//   @override
//   State<CusItem> createState() => _CusItemState();
// }

// class _CusItemState extends State<CusItem> {
//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     TextTheme _textTheme = Theme.of(context).textTheme;

//     return Container(
//       margin: const EdgeInsets.all(10),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: (widget.marked) ? COLOR_Amber1 : COLOR_Grey1,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(5),
//           ),
//         ),
//         onPressed: () {},
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: FittedBox(child: Text(widget.item.name, style: _textTheme.subtitle1)),
//         ),
//       ),
//     );
//   }
// }
