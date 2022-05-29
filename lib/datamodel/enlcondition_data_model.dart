import 'compare_data_model.dart';

import 'package:meta/meta.dart';
import 'dart:convert';

class enlConditionDataModel {
  enlConditionDataModel() {
    operations.add(Operation());
  }

  List<Compare> compares = [];
  List<Operation> operations = [];
  String conditionType = "12";

  Map<String, dynamic> toJson() => {
        "Compares": List<dynamic>.from(compares.map((x) => x.toJson())),
        "Operations": List<dynamic>.from(operations.map((x) => x.toJson())),
        "ConditionType": conditionType,
      };
}

class Operation {
  Operation({
    this.type = "NinjaScriptGenerator.Long, NinjaScriptGenerator",
    this.action = 0,
    this.quantity = 0,
  });

  String type;
  int action;
  int quantity;

  // factory Operation.fromJson(Map<String, dynamic> json) => Operation(
  //       type: json["\u0024type"],
  //       action: json["Action"],
  //       quantity: json["Quantity"],
  //     );

  Map<String, dynamic> toJson() => {
        "\u0024type": type,
        "Action": action,
        "Quantity": quantity,
      };
}

// To parse this JSON data, do
//
//     final enlConditionDataModel = enlConditionDataModelFromJson(jsonString);

// EnlConditionDataModel enlConditionDataModelFromJson(String str) =>
//     EnlConditionDataModel.fromJson(json.decode(str));

// String enlConditionDataModelToJson(EnlConditionDataModel data) =>
//     json.encode(data.toJson());

// class EnlConditionDataModel {
//   EnlConditionDataModel({
//     required this.compares,
//     required this.operations,
//     required this.conditionType,
//   });

//   List<Compare> compares;
//   List<Operation> operations;
//   String conditionType;

//   factory EnlConditionDataModel.fromJson(Map<String, dynamic> json) =>
//       EnlConditionDataModel(
//         compares: List<Compare>.from(
//             json["Compares"].map((x) => Compare.fromJson(x))),
//         operations: List<Operation>.from(
//             json["Operations"].map((x) => Operation.fromJson(x))),
//         conditionType: json["ConditionType"],
//       );

//   Map<String, dynamic> toJson() => {
//         "Compares": List<dynamic>.from(compares.map((x) => x.toJson())),
//         "Operations": List<dynamic>.from(operations.map((x) => x.toJson())),
//         "ConditionType": conditionType,
//       };
// }

// class Compare {
//   Compare({
//     required this.firstObject,
//     required this.secondObject,
//     required this.operation,
//   });

//   FirstObject firstObject;
//   SecondObject secondObject;
//   String operation;

//   factory Compare.fromJson(Map<String, dynamic> json) => Compare(
//         firstObject: FirstObject.fromJson(json["FirstObject"]),
//         secondObject: SecondObject.fromJson(json["SecondObject"]),
//         operation: json["Operation"],
//       );

//   Map<String, dynamic> toJson() => {
//         "FirstObject": firstObject.toJson(),
//         "SecondObject": secondObject.toJson(),
//         "Operation": operation,
//       };
// }

// class FirstObject {
//   FirstObject({
//     required this.type,
//     required this.price,
//     required this.barsAgo,
//     required this.plotOnChart,
//     required this.deviationType,
//     required this.deviationValue,
//     required this.useHighLow,
//     required this.valuePlot,
//     required this.offsetType,
//     required this.firstObjectOperator,
//     required this.offset,
//   });

//   String type;
//   String price;
//   String barsAgo;
//   String plotOnChart;
//   String deviationType;
//   String deviationValue;
//   String useHighLow;
//   String valuePlot;
//   String offsetType;
//   String firstObjectOperator;
//   String offset;

//   factory FirstObject.fromJson(Map<String, dynamic> json) => FirstObject(
//         type: json["\u0024type"],
//         price: json["Price"],
//         barsAgo: json["BarsAgo"],
//         plotOnChart: json["PlotOnChart"],
//         deviationType: json["DeviationType"],
//         deviationValue: json["DeviationValue"],
//         useHighLow: json["UseHighLow"],
//         valuePlot: json["ValuePlot"],
//         offsetType: json["OffsetType"],
//         firstObjectOperator: json["Operator"],
//         offset: json["Offset"],
//       );

//   Map<String, dynamic> toJson() => {
//         "\u0024type": type,
//         "Price": price,
//         "BarsAgo": barsAgo,
//         "PlotOnChart": plotOnChart,
//         "DeviationType": deviationType,
//         "DeviationValue": deviationValue,
//         "UseHighLow": useHighLow,
//         "ValuePlot": valuePlot,
//         "OffsetType": offsetType,
//         "Operator": firstObjectOperator,
//         "Offset": offset,
//       };
// }

// class SecondObject {
//   SecondObject({
//     required this.type,
//     required this.price,
//     required this.barsAgo,
//     required this.plotOnChart,
//     required this.offsetType,
//     required this.secondObjectOperator,
//     required this.offset,
//   });

//   String type;
//   String price;
//   String barsAgo;
//   String plotOnChart;
//   String offsetType;
//   String secondObjectOperator;
//   String offset;

//   factory SecondObject.fromJson(Map<String, dynamic> json) => SecondObject(
//         type: json["\u0024type"],
//         price: json["Price"],
//         barsAgo: json["BarsAgo"],
//         plotOnChart: json["PlotOnChart"],
//         offsetType: json["OffsetType"],
//         secondObjectOperator: json["Operator"],
//         offset: json["Offset"],
//       );

//   Map<String, dynamic> toJson() => {
//         "\u0024type": type,
//         "Price": price,
//         "BarsAgo": barsAgo,
//         "PlotOnChart": plotOnChart,
//         "OffsetType": offsetType,
//         "Operator": secondObjectOperator,
//         "Offset": offset,
//       };
// }
