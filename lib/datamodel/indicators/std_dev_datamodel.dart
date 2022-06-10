// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// StandardDeviationdatamodel datamodelFromJson(String str) =>
//     StandardDeviationdatamodel.fromJson(json.decode(str));

String datamodelToJson(StandardDeviationdatamodel data) =>
    json.encode(data.toJson());

class StandardDeviationdatamodel {
  StandardDeviationdatamodel({
    this.type = 'NinjaScriptGenerator.StandardDeviation, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Standard Deviation';
  String type;
  String price;
  String barsAgo;
  String period;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory StandardDeviationdatamodel.fromJson(Map<String, dynamic> json) => StandardDeviationdatamodel(
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
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
      };
}
