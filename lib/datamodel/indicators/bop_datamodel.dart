// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// BOPdatamodel datamodelFromJson(String str) =>
//     BOPdatamodel.fromJson(json.decode(str));

String datamodelToJson(BOPdatamodel data) => json.encode(data.toJson());

class BOPdatamodel {
  BOPdatamodel({
    this.type = 'NinjaScriptGenerator.BOP, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.smooth = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String elementName = 'BOP';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String smooth;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory BOPdatamodel.fromJson(Map<String, dynamic> json) => BOPdatamodel(
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
        "Smooth": smooth,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
      };
}
