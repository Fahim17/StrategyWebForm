// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Lowdatamodel datamodelFromJson(String str) =>
//     Lowdatamodel.fromJson(json.decode(str));

String datamodelToJson(Lowdatamodel data) => json.encode(data.toJson());

class Lowdatamodel {
  Lowdatamodel({
    this.type = 'NinjaScriptGenerator.Low, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Low';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory Lowdatamodel.fromJson(Map<String, dynamic> json) => Lowdatamodel(
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
