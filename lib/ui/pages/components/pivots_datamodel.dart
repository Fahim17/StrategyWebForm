// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Pivotsdatamodel datamodelFromJson(String str) =>
//     Pivotsdatamodel.fromJson(json.decode(str));

String datamodelToJson(Pivotsdatamodel data) => json.encode(data.toJson());

class Pivotsdatamodel {
  Pivotsdatamodel({
    this.type = 'NinjaScriptGenerator.Pivots, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.pivotRange = '0',
    this.HLCCalculationMode = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String elementName = 'Pivots';
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

  // factory Pivotsdatamodel.fromJson(Map<String, dynamic> json) => Pivotsdatamodel(
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
        "HLCCalculationMode": HLCCalculationMode,
        "PivotRange": pivotRange,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
        "ValuePlot": valuePlot,
      };
}
