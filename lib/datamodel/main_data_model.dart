// ignore_for_file: file_names

import 'package:ninjastrategy2/datamodel/enlcondition_data_model.dart';
import 'package:ninjastrategy2/datamodel/enscondition_data_model.dart';
import 'package:ninjastrategy2/datamodel/exlcondition_data_model.dart';
import 'package:ninjastrategy2/datamodel/exscondition_data_model.dart';

class MainDataModel {
  String name = 'Default';
  String desc = '';
  Defaults defaults = Defaults();
  List instruments = [];
  List variables = [];
  List inputs = [];
  TargetAction ta_profit_margin = TargetAction(targetType: 0);
  TargetAction ta_stop_loss = TargetAction(targetType: 1);
  List targetActions = [];

  int variablesCount = 0;
  int inputsCount = 0;

  enlConditionDataModel enlC = enlConditionDataModel();
  ensConditionDataModel ensC = ensConditionDataModel();
  exlConditionDataModel exlC = exlConditionDataModel();
  exsConditionDataModel exsC = exsConditionDataModel();
  List conditionSets = [];

  // **run this before calling toJson()**
  void prepareFinalData() {
    targetActions.add(ta_profit_margin);
    targetActions.add(ta_stop_loss);

    conditionSets.add(enlC);
    conditionSets.add(exlC);
    conditionSets.add(ensC);
    conditionSets.add(exsC);
  }

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Description": name,
        "Defaults": defaults.toJson(),
        "Instruments": List<dynamic>.from(instruments.map((x) => x.toJson())),
        "Inputs": List<dynamic>.from(inputs.map((x) => x.toJson2())),
        "Variables": List<dynamic>.from(variables.map((x) => x.toJson2())),
        "ConditionSets":
            List<dynamic>.from(conditionSets.map((x) => x.toJson())),
        "TargetActions":
            List<dynamic>.from(targetActions.map((x) => x.toJson())),
      };
}

class Instruments {
  Instruments({
    this.name = '5',
    this.type = '1',
    this.value = '2',
  });

  String name;
  String type;
  String value;

  // factory TargetAction.fromJson(Map<String, dynamic> json) => TargetAction(
  //     targetType: json["TargetType"],
  //     type: json["Type"],
  //     value: json["Value"],
  // );

  Map<String, dynamic> toJson() => {
        "TargetType": name,
        "Type": type,
        "Value": value,
      };
}

class Defaults {
  Defaults({
    this.calculate = 0,
    this.exitOnSessionClose = true,
    this.contractsPerEntry = "1",
  });
  int calculate;
  bool exitOnSessionClose;
  String contractsPerEntry;

  // factory Defaults.fromJson(Map<String, dynamic> json) => Defaults(
  //     calculate: json["Calculate"],
  //     exitOnSessionClose: json["ExitOnSessionClose"],
  //     contractsPerEntry: json["ContractsPerEntry"],
  // );

  Map<String, dynamic> toJson() => {
        "Calculate": calculate,
        "ExitOnSessionClose": exitOnSessionClose,
        "ContractsPerEntry": contractsPerEntry,
      };
}

class TargetAction {
  TargetAction({
    required this.targetType,
    this.type = '3',
    this.value = '1',
  });

  int targetType;
  String type;
  String value;

  // factory TargetAction.fromJson(Map<String, dynamic> json) => TargetAction(
  //     targetType: json["TargetType"],
  //     type: json["Type"],
  //     value: json["Value"],
  // );

  Map<String, dynamic> toJson() => {
        "TargetType": targetType,
        "Type": type,
        "Value": value,
      };
}
