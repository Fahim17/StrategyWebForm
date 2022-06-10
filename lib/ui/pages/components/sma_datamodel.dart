// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// SMAdatamodel datamodelFromJson(String str) =>
//     SMAdatamodel.fromJson(json.decode(str));

String datamodelToJson(SMAdatamodel data) => json.encode(data.toJson());

class SMAdatamodel {
  SMAdatamodel({
    this.type = 'NinjaScriptGenerator.SMA, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'SMA';
  String type;
  String price;
  String barsAgo;
  String period;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory SMAdatamodel.fromJson(Map<String, dynamic> json) => SMAdatamodel(
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
