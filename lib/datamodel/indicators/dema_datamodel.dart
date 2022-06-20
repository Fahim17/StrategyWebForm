// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// DEMAdatamodel datamodelFromJson(String str) =>
//     DEMAdatamodel.fromJson(json.decode(str));

String datamodelToJson(DEMAdatamodel data) => json.encode(data.toJson());

class DEMAdatamodel {
  DEMAdatamodel({
    this.type = 'NinjaScriptGenerator.DEMA, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'DEMA';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory DEMAdatamodel.fromJson(Map<String, dynamic> json) => DEMAdatamodel(
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
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
      };
}
