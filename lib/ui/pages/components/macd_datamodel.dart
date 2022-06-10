// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// MACDdatamodel datamodelFromJson(String str) =>
//     MACDdatamodel.fromJson(json.decode(str));

String datamodelToJson(MACDdatamodel data) => json.encode(data.toJson());

class MACDdatamodel {
  MACDdatamodel({
    this.type = 'NinjaScriptGenerator.MACD, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.valuePlot = '0',
    this.fast = '0',
    this.slow = '0',
    this.smooth = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'MACD';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String valuePlot;
  String fast;
  String slow;
  String smooth;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory MACDdatamodel.fromJson(Map<String, dynamic> json) => MACDdatamodel(
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
        "Fast": fast,
        "Slow": slow,
        "Smooth": smooth,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
