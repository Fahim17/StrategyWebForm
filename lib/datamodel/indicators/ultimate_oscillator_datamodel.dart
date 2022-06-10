// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// UltimateOscillatordatamodel datamodelFromJson(String str) =>
//     UltimateOscillatordatamodel.fromJson(json.decode(str));

String datamodelToJson(UltimateOscillatordatamodel data) =>
    json.encode(data.toJson());

class UltimateOscillatordatamodel {
  UltimateOscillatordatamodel({
    this.type = 'NinjaScriptGenerator.UltimateOscillator, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.valuePlot = '0',
    this.fast = '0',
    this.slow = '0',
    this.intermediate = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'UltimateOscillator';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String valuePlot;
  String fast;
  String slow;
  String intermediate;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory UltimateOscillatordatamodel.fromJson(Map<String, dynamic> json) => UltimateOscillatordatamodel(
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
        "Fast": fast,
        "Slow": slow,
        "Intermediate": intermediate,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
