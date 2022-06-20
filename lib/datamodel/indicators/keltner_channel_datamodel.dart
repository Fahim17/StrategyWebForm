// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// KeltnerChanneldatamodel datamodelFromJson(String str) =>
//     KeltnerChanneldatamodel.fromJson(json.decode(str));

String datamodelToJson(KeltnerChanneldatamodel data) =>
    json.encode(data.toJson());

class KeltnerChanneldatamodel {
  KeltnerChanneldatamodel({
    this.type = 'NinjaScriptGenerator.KeltnerChannel, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetMultiplier = '0',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Keltner Channel';
  String type;
  String price;
  String offsetMultiplier;
  String valuePlot;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory KeltnerChanneldatamodel.fromJson(Map<String, dynamic> json) => KeltnerChanneldatamodel(
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
        "OffsetMultiplier": offsetMultiplier,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
        "ValuePlot": valuePlot,
      };
}
