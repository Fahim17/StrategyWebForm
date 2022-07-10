// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// ZigZagdatamodel datamodelFromJson(String str) =>
//     ZigZagdatamodel.fromJson(json.decode(str));

String datamodelToJson(ZigZagdatamodel data) => json.encode(data.toJson());

class ZigZagdatamodel {
  ZigZagdatamodel({
    this.type = 'NinjaScriptGenerator.ZigZag, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.valuePlot = '0',
    this.deviationType = '0',
    this.deviationValue = '0',
    this.useHighLow = 'false',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'ZigZag';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String valuePlot;
  String deviationType;
  String deviationValue;
  String useHighLow;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory ZigZagdatamodel.fromJson(Map<String, dynamic> json) => ZigZagdatamodel(
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
        "Price": price,
        "BarsAgo": barsAgo,
        "PlotOnChart": plotOnChart,
        "DeviationType": deviationType,
        "DeviationValue": deviationValue,
        "UseHighLow": useHighLow,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
