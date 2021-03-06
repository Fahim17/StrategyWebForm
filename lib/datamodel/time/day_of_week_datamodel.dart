// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// DayofWeekdatamodel datamodelFromJson(String str) =>
//     DayofWeekdatamodel.fromJson(json.decode(str));

String datamodelToJson(DayofWeekdatamodel data) => json.encode(data.toJson());

class DayofWeekdatamodel {
  DayofWeekdatamodel({
    this.type = 'NinjaScriptGenerator.DayofWeek, NinjaScriptGenerator',
    // this.price = '0',
    // this.barsAgo = '0',
    this.DayOfWeek = '0',
    // this.offsetType = '0',
    // this.datamodelOperator = '0',
    // this.offset = '0',
  });
  String elementName = 'DayofWeek';
  String type;
  // String price;
  // String barsAgo;
  String DayOfWeek;
  // String offsetType;
  // String datamodelOperator;
  // String offset;

  // factory DayofWeekdatamodel.fromJson(Map<String, dynamic> json) => DayofWeekdatamodel(
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
        // "Price": price,
        // "BarsAgo": barsAgo,
        "PlotOnChart": DayOfWeek,
        // "OffsetType": offsetType,
        // "Operator": datamodelOperator,
        // "Offset": offset,
      };
}
