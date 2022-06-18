// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// DateValuedatamodel datamodelFromJson(String str) =>
//     DateValuedatamodel.fromJson(json.decode(str));

String datamodelToJson(DateValuedatamodel data) => json.encode(data.toJson());

class DateValuedatamodel {
  DateValuedatamodel({
    this.type = 'NinjaScriptGenerator.DateValue, NinjaScriptGenerator',
    // this.price = '0',
    // this.barsAgo = '0',
    this.Date = '',
    // this.offsetType = '0',
    // this.datamodelOperator = '0',
    // this.offset = '0',
  });
  String elementName = 'DateValue';
  String type;
  // String price;
  // String barsAgo;
  String Date;
  // String offsetType;
  // String datamodelOperator;
  // String offset;

  // factory DateValuedatamodel.fromJson(Map<String, dynamic> json) => DateValuedatamodel(
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
        "dateValue": Date,
        // "OffsetType": offsetType,
        // "Operator": datamodelOperator,
        // "Offset": offset,
      };
}
