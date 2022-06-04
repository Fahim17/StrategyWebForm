class Compare {
  var firstObject;
  var secondObject;
  String operation = "7";
  String operationName = "Equal";

  Map<String, dynamic> toJson() => {
        "FirstObject": firstObject.toJson(),
        "SecondObject": secondObject.toJson(),
        "Operation": operation,
      };
}
