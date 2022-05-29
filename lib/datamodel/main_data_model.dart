// ignore_for_file: file_names

class MainDataModel {
  String name = '';
  String desc = '';
  Defaults defaults = Defaults();
  List instruments = [];
  List variables = [];
  TargetAction ta_profit_margin = TargetAction(targetType: 0);
  TargetAction ta_stop_loss = TargetAction(targetType: 1);
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
    this.exitOnSessionClose = false,
    this.contractsPerEntry = 1,
  });
  int calculate;
  bool exitOnSessionClose;
  int contractsPerEntry;

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
