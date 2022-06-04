// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// ADXdatamodel datamodelFromJson(String str) =>
//     ADXdatamodel.fromJson(json.decode(str));

String datamodelToJson(ADXdatamodel data) => json.encode(data.toJson());

class ADXdatamodel {
  ADXdatamodel({
    this.type = 'NinjaScriptGenerator.ADX, NinjaScriptGenerator',
    this.price = '4',
    this.barsAgo = '1',
    this.plotOnChart = 'false',
    this.period = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '2',
  });

  String elementName = 'ADX';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String period;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory ADXdatamodel.fromJson(Map<String, dynamic> json) => ADXdatamodel(
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
