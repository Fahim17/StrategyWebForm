// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// FibbonacciPivotsdatamodel datamodelFromJson(String str) =>
//     FibbonacciPivotsdatamodel.fromJson(json.decode(str));

String datamodelToJson(FibbonacciPivotsdatamodel data) => json.encode(data.toJson());

class FibbonacciPivotsdatamodel {
  FibbonacciPivotsdatamodel({
    this.type = 'NinjaScriptGenerator.FibonacciPivots, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.pivotRange = '0',
    this.HLCCalculationMode = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Fibonacci Pivots';
  String type;
  String price;
  String HLCCalculationMode;
  String valuePlot;
  String barsAgo;
  String plotOnChart;
  String pivotRange;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory FibbonacciPivotsdatamodel.fromJson(Map<String, dynamic> json) => FibbonacciPivotsdatamodel(
  //       type: json["\u0024type"],
  //       price: json["Price"],
  //       barsAgo: json["BarsAgo"],
  //       plotOnChart: json["PlotOnChart"],
  //       offsetType: json["OffsetType"],
  //       datamodelOperator: json["Operator"],
  //       offset: json["Offset"],
  //     );

  Map<String, dynamic> toJson() => {
        "\u0024type": type,
        "CalcMode": HLCCalculationMode,
        "Range": pivotRange,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
        "ValuePlot": valuePlot,
      };
}
