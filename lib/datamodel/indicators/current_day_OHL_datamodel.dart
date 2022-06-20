// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// CurrentDayOHLdatamodel datamodelFromJson(String str) =>
//     CurrentDayOHLdatamodel.fromJson(json.decode(str));

String datamodelToJson(CurrentDayOHLdatamodel data) =>
    json.encode(data.toJson());

class CurrentDayOHLdatamodel {
  CurrentDayOHLdatamodel({
    this.type = 'NinjaScriptGenerator.CurrentDayOHL, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });

  String elementName = 'Current Day OHL';
  String type;
  String price;
  String valuePlot;
  String barsAgo;
  String plotOnChart;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory CurrentDayOHLdatamodel.fromJson(Map<String, dynamic> json) => CurrentDayOHLdatamodel(
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
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "BarsAgo": barsAgo,
        "Offset": offset,
        "PlotOnChart": plotOnChart,
        "ValuePlot": valuePlot,
      };
}
