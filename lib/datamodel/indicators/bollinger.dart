// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Bollingerdatamodel datamodelFromJson(String str) =>
//     Bollingerdatamodel.fromJson(json.decode(str));

String datamodelToJson(Bollingerdatamodel data) => json.encode(data.toJson());

class Bollingerdatamodel {
  Bollingerdatamodel({
    this.type = 'NinjaScriptGenerator.Bollinger, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.period = '0',
    this.numStdDev = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String type;
  String price;
  String numStdDev;
  String valuePlot;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory Bollingerdatamodel.fromJson(Map<String, dynamic> json) => Bollingerdatamodel(
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
        "Period": period,
        "NumStdDev": numStdDev,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
        "ValuePlot": valuePlot,
      };
}
