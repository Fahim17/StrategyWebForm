// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// ChaikinVolatilitydatamodel datamodelFromJson(String str) =>
//     ChaikinVolatilitydatamodel.fromJson(json.decode(str));

String datamodelToJson(ChaikinVolatilitydatamodel data) =>
    json.encode(data.toJson());

class ChaikinVolatilitydatamodel {
  ChaikinVolatilitydatamodel({
    this.type = 'NinjaScriptGenerator.ChaikinVolatility, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.movingAvgPeriod = '0',
    this.rateOfChangePeriod = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String elementName = 'Chaikin Volatility';
  String type;
  String price;
  String movingAvgPeriod;
  String barsAgo;
  String plotOnChart;
  String rateOfChangePeriod;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory ChaikinVolatilitydatamodel.fromJson(Map<String, dynamic> json) => ChaikinVolatilitydatamodel(
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
        "MovingAvgPeriod": movingAvgPeriod,
        "RateOfChangePeriod": rateOfChangePeriod,
        "Price": price,
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
      };
}
