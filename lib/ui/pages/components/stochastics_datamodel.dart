// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Stochasticsdatamodel datamodelFromJson(String str) =>
//     Stochasticsdatamodel.fromJson(json.decode(str));

String datamodelToJson(Stochasticsdatamodel data) => json.encode(data.toJson());

class Stochasticsdatamodel {
  Stochasticsdatamodel({
    this.type = 'NinjaScriptGenerator.Stochastics, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.periodD = '0',
    this.periodK = '0',
    this.smooth = '0',
    this.valuePlot = '0',
    this.plotOnChart = 'false',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Stochastics';
  String type;
  String price;
  String barsAgo;
  String periodD;
  String periodK;
  String smooth;
  String valuePlot;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory Stochasticsdatamodel.fromJson(Map<String, dynamic> json) => Stochasticsdatamodel(
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
        "Smooth": smooth,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
