// To parse this JSON data, do
//
//     final datamodel = datamodelFromJson(jsonString);

import 'dart:convert';

// PriorDayOHLCdatamodel datamodelFromJson(String str) =>
//     PriorDayOHLCdatamodel.fromJson(json.decode(str));

String datamodelToJson(PriorDayOHLCdatamodel data) =>
    json.encode(data.toJson());

class PriorDayOHLCdatamodel {
  PriorDayOHLCdatamodel({
    this.type = 'NinjaScriptGenerator.PriorDayOHLC, NinjaScriptGenerator',
    this.price = '0',
    this.barsAgo = '0',
    this.plotOnChart = 'false',
    this.valuePlot = '0',
    this.offsetType = '0',
    this.datamodelOperator = '0',
    this.offset = '0',
  });
  String elementName = 'Prior Day OHLC';
  String type;
  String price;
  String barsAgo;
  String plotOnChart;
  String valuePlot;
  String offsetType;
  String datamodelOperator;
  String offset;

  // factory PriorDayOHLCdatamodel.fromJson(Map<String, dynamic> json) => PriorDayOHLCdatamodel(
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
        "OffsetType": offsetType,
        "Operator": datamodelOperator,
        "Offset": offset,
        "ValuePlot": valuePlot,
      };
}
