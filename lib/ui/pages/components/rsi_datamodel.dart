// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// RSIdatamodel datamodelFromJson(String str) =>
//     RSIdatamodel.fromJson(json.decode(str));

String datamodelToJson(RSIdatamodel data) => json.encode(data.toJson());

class RSIdatamodel {
  RSIdatamodel({
    this.type = 'NinjaScriptGenerator.RSI, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.smooth = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'RSI';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String period;
  String smooth;
  String valuePlot;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory RSIdatamodel.fromJson(Map<String, dynamic> json) => RSIdatamodel(
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
        "Period": period,
        "Smooth": smooth,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
