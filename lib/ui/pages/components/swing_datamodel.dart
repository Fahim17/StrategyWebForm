// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// Swingdatamodel datamodelFromJson(String str) =>
//     Swingdatamodel.fromJson(json.decode(str));

String datamodelToJson(Swingdatamodel data) => json.encode(data.toJson());

class Swingdatamodel {
  Swingdatamodel({
    this.type = 'NinjaScriptGenerator.Swing, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.strength = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Swing';
  String type;
  String price;
  String barsAgo;
  String strength;
  String valuePlot;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory Swingdatamodel.fromJson(Map<String, dynamic> json) => Swingdatamodel(
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
        "Strength": strength,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
