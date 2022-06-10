// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// EMAdatamodel datamodelFromJson(String str) =>
//     EMAdatamodel.fromJson(json.decode(str));

String datamodelToJson(EMAdatamodel data) => json.encode(data.toJson());

class EMAdatamodel {
  EMAdatamodel({
    this.type = 'NinjaScriptGenerator.EMA, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String elementName = 'EMA';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory EMAdatamodel.fromJson(Map<String, dynamic> json) => EMAdatamodel(
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
