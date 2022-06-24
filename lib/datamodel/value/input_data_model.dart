// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Inputdatamodel datamodelFromJson(String str) =>
//     Inputdatamodel.fromJson(json.decode(str));

String datamodelToJson(Inputdatamodel data) => json.encode(data.toJson());

class Inputdatamodel {
  Inputdatamodel({
    this.type = 'NinjaScriptGenerator.Input, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.numStdDev = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Input';
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

  // factory Inputdatamodel.fromJson(Map<String, dynamic> json) => Inputdatamodel(
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
