// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Mediandatamodel datamodelFromJson(String str) =>
//     Mediandatamodel.fromJson(json.decode(str));

String datamodelToJson(Mediandatamodel data) => json.encode(data.toJson());

class Mediandatamodel {
  Mediandatamodel({
    this.type = 'NinjaScriptGenerator.Median, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Median';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory Mediandatamodel.fromJson(Map<String, dynamic> json) => Mediandatamodel(
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
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
      };
}
