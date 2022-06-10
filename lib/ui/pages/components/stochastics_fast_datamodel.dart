// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// StochasticsFastdatamodel datamodelFromJson(String str) =>
//     StochasticsFastdatamodel.fromJson(json.decode(str));

String datamodelToJson(StochasticsFastdatamodel data) =>
    json.encode(data.toJson());

class StochasticsFastdatamodel {
  StochasticsFastdatamodel({
    this.type = 'NinjaScriptGenerator.StochasticsFast, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.periodD = '0',
    this.periodK = '0',
    this.valuePlot = '0',
    this.plotOnChart = 'false',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'StochasticsFast';
  String type;
  String price;
  String barsAgo;
  String periodD;
  String periodK;
  String valuePlot;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory StochasticsFastdatamodel.fromJson(Map<String, dynamic> json) => StochasticsFastdatamodel(
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
        "PeriodD": periodD,
        "PeriodK": periodK,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
