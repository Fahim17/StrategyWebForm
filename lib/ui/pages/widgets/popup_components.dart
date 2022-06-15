import 'package:flutter/material.dart';
import 'package:ninjastrategy2/themes/app_theme_data.dart';

class ComponentsPopUp extends StatefulWidget {
  Function selection;
  ComponentsPopUp({Key? key, required this.selection}) : super(key: key);

  @override
  State<ComponentsPopUp> createState() => _ComponentsPopUpState();
}

class _ComponentsPopUpState extends State<ComponentsPopUp> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  List allIndicators = [
    'ADL',
    'ADX',
    'Bollinger',
    'BOP',
    'Chaikin Oscillator',
    'Chaikin Volatility',
    'Current Day OHL',
    'DEMA',
    'Double Stochastics',
    'EMA',
    'Fibbonacci Pivots',
    'Keltner Channel',
    'MACD',
    'MAX',
    'MIN',
    'Pivots',
    'Prior Day OHLC',
    'RSI',
    'SMA',
    'Standard Deviation',
    'Stochastic',
    'Stochastic Fast',
    'Swing',
    'Ultimate Oscillator',
    'VOL',
    'ZigZag',
  ];
  List allPrice = [
    'Ask',
    'Bid',
    'Close',
    'High',
    'Median',
    'Low',
  ];
  List<String> allVolumn = [
    'VAsk',
    'VBid',
    'VVolumn',
  ];
  List allTime = [
    'Date Value',
    'Time Value',
    'Day of Week',
  ];
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget _tabOptions(String title) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Tab(
      child: Text(
        title,
        style: _textTheme.subtitle1?.copyWith(fontWeight: FontWeight.normal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    final Size screenSize = MediaQuery.of(context).size;
    return AlertDialog(
      actions: [
        Container(
          decoration: BoxDecoration(
            color: COLOR_Grey3,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TabBar(
            indicatorWeight: 5,
            controller: _tabController,
            tabs: [
              _tabOptions('Indicators'),
              _tabOptions('Price'),
              _tabOptions('Volumn'),
              _tabOptions('Time'),
            ],
          ),
        ),
      ],
      title: Center(
        child: Text(
          "Elements",
          style: _textTheme.headline5?.copyWith(fontWeight: FontWeight.normal),
        ),
      ),
      content: SizedBox(
        width: bxWidth * 0.8,
        height: bxHeight * 0.5,
        child: TabBarView(
          controller: _tabController,
          children: [
            Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                //   child: TextField(
                //     controller: widget.searchController,
                //     decoration: const InputDecoration(hintText: 'Search')
                //         .applyDefaults(_inputDecorTheme),
                //     keyboardType: TextInputType.name,
                //     style: _textTheme.headline6?.copyWith(color: Colors.black),
                //   ),
                // ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 0.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: (screenSize.width / screenSize.height),
                    ),
                    shrinkWrap: true,
                    itemCount: allIndicators.length,
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
                            widget.selection(allIndicators[index]);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(allIndicators[index],
                                textAlign: TextAlign.center, style: _textTheme.subtitle1?.copyWith(color: Colors.white)),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
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
                    itemCount: allPrice.length,
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
                            widget.selection(allPrice[index]);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: FittedBox(child: Text(allPrice[index], style: _textTheme.subtitle1?.copyWith(color: Colors.white))),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
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
                    itemCount: allVolumn.length,
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
                            widget.selection(allVolumn[index]);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: FittedBox(
                                child:
                                    Text(allVolumn[index].substring(1), style: _textTheme.subtitle1?.copyWith(color: Colors.white))),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
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
                    itemCount: allTime.length,
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
                            widget.selection(allTime[index]);
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: FittedBox(child: Text(allTime[index], style: _textTheme.subtitle1?.copyWith(color: Colors.white))),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
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
