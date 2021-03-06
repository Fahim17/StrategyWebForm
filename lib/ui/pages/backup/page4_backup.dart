// import 'package:flutter/material.dart';
// import 'package:ninjastrategy2/themes/app_theme_data.dart';

// class Page4 extends StatefulWidget {
//   Page4({Key? key}) : super(key: key);

//   @override
//   State<Page4> createState() => _Page4State();
// }

// class _Page4State extends State<Page4> {
//   List<bool> features = [false, false, false, false];

//   TextEditingController ptController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   final double lableHPadding = 0.105;
//   final double optionVPadding = 10;
//   final double optionLV = 0.105;
//   @override
//   Widget build(BuildContext context) {
//     Size screensize = MediaQuery.of(context).size;
//     TextTheme _textTheme = Theme.of(context).textTheme;
//     // print(screensize.toString());
//     return Scaffold(
//       body: Center(
//         child: Container(
//           height: screensize.height * bxHeightRatio,
//           width: screensize.width * bxWidthRatio,
//           decoration: bxDecorations,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: screensize.height * 0.05),
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(
//                     titleText,
//                     style: _textTheme.headline4,
//                   ),
//                 ),
//                 SizedBox(height: screensize.height * 0.02),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(
//                       screensize.width * 0.05, 0, screensize.width * 0.05, 0),
//                   child: Text(
//                     'How Do you measure the Profit of the Strategy?',
//                     style: _textTheme.headline6,
//                   ),
//                 ),
//                 SizedBox(height: screensize.height * 0.05),
//                 Row(
//                   children: [
//                     SizedBox(width: screensize.width * optionLV),
//                     InkWell(
//                       onTap: () {
//                         features[0] = !features[0];
//                         setState(() {});
//                       },
//                       child: Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: COLOR_PRIMARY),
//                             borderRadius: BorderRadius.circular(15),
//                             color: (features[0])
//                                 ? COLOR_PRIMARY
//                                 : Colors.transparent),
//                       ),
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       'Currency',
//                       style: _textTheme.subtitle1,
//                     ),
//                     const Expanded(flex: 1, child: SizedBox.shrink()),
//                   ],
//                 ),
//                 SizedBox(height: optionVPadding),
//                 Row(
//                   children: [
//                     SizedBox(width: screensize.width * optionLV),
//                     InkWell(
//                       onTap: () {
//                         features[1] = !features[1];
//                         setState(() {});
//                       },
//                       child: Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: COLOR_PRIMARY),
//                             borderRadius: BorderRadius.circular(15),
//                             color: (features[1])
//                                 ? COLOR_PRIMARY
//                                 : Colors.transparent),
//                       ),
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       'Ticks',
//                       style: _textTheme.subtitle1,
//                     ),
//                     const Expanded(flex: 1, child: SizedBox.shrink()),
//                   ],
//                 ),
//                 SizedBox(height: optionVPadding),
//                 Row(
//                   children: [
//                     SizedBox(width: screensize.width * optionLV),
//                     InkWell(
//                       onTap: () {
//                         features[2] = !features[2];
//                         setState(() {});
//                       },
//                       child: Container(
//                         height: 30,
//                         width: 30,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: COLOR_PRIMARY),
//                             borderRadius: BorderRadius.circular(15),
//                             color: (features[2])
//                                 ? COLOR_PRIMARY
//                                 : Colors.transparent),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       'Price',
//                       style: _textTheme.subtitle1,
//                     ),
//                     const Expanded(flex: 1, child: SizedBox.shrink()),
//                   ],
//                 ),
//                 SizedBox(height: screensize.height * 0.1),
//                 Text(
//                   'Enter Profit Target',
//                   style: _textTheme.headline6,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(
//                       screensize.width * 0.1, 0, screensize.width * 0.1, 0),
//                   child: TextField(
//                     controller: ptController,
//                     decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Type Answer Here...'),
//                     style: _textTheme.subtitle1,
//                   ),
//                 ),
//                 SizedBox(height: screensize.height * 0.15),
//                 ElevatedButton(
//                     onPressed: () {},
//                     child: const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Text('Next'),
//                     ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
