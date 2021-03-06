import 'compare_data_model.dart';

import 'package:meta/meta.dart';
import 'dart:convert';

class enlConditionDataModel {
  enlConditionDataModel() {
    operations.add(enlOperation());
  }

  List<Compare> compares = [];
  List<enlOperation> operations = [];
  String conditionType = "12";

  Map<String, dynamic> toJson() => {
        "Compares": List<dynamic>.from(compares.map((x) => x.toJson())),
        "Operations": List<dynamic>.from(operations.map((x) => x.toJson())),
        "ConditionType": conditionType,
      };
}

class enlOperation {
  enlOperation({
    this.type = "NinjaScriptGenerator.Long, NinjaScriptGenerator",
    this.action = 0,
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
