import 'compare_data_model.dart';

import 'package:meta/meta.dart';
import 'dart:convert';

class exsConditionDataModel {
  exsConditionDataModel() {
    operations.add(exsOperation());
  }

  List<Compare> compares = [];
  List<exsOperation> operations = [];
  String conditionType = "12";

  Map<String, dynamic> toJson() => {
        "Compares": List<dynamic>.from(compares.map((x) => x.toJson())),
        "Operations": List<dynamic>.from(operations.map((x) => x.toJson())),
        "ConditionType": conditionType,
      };
}

class exsOperation {
  exsOperation({
    this.type = "NinjaScriptGenerator.Short, NinjaScriptGenerator",
    this.action = 1,
    this.quantity = 0,
  });

  String type;
  int action;
  int quantity;

  // factory Operation.fromJson(Map<String, dynamic> json) => Operation(
  //       type: json["\u0024type"],
  //       action: json["Action"],
  //       quantity: json["Quantity"],
  //     );

  Map<String, dynamic> toJson() => {
        "\u0024type": type,
        "Action": action,
        "Quantity": quantity,
      };
}
