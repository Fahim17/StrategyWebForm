// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// DoubleStochasticsdatamodel datamodelFromJson(String str) =>
//     DoubleStochasticsdatamodel.fromJson(json.decode(str));

String datamodelToJson(DoubleStochasticsdatamodel data) =>
    json.encode(data.toJson());

class DoubleStochasticsdatamodel {
  DoubleStochasticsdatamodel({
    this.type = 'NinjaScriptGenerator.DoubleStochastics, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Double Stochastics';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory DoubleStochasticsdatamodel.fromJson(Map<String, dynamic> json) => DoubleStochasticsdatamodel(
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
