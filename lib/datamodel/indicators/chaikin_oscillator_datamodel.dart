// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// ChaikinOscillatordatamodel datamodelFromJson(String str) =>
//     ChaikinOscillatordatamodel.fromJson(json.decode(str));

String datamodelToJson(ChaikinOscillatordatamodel data) => json.encode(data.toJson());

class ChaikinOscillatordatamodel {
  ChaikinOscillatordatamodel({
    this.type = 'NinjaScriptGenerator.ChaikinOscillator, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.fast = '0',
    this.slow = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Chaikin Oscillator';
  String type;
  String price;
  String fast;
  String barsAgo;
  String plotOnChart;
  String slow;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory ChaikinOscillatordatamodel.fromJson(Map<String, dynamic> json) => ChaikinOscillatordatamodel(
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
        "Fast": fast,
        "Slow": slow,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
      };
}
