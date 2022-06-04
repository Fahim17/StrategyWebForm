import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';

class ApiCall {
  Future addCategory(String name) async {
    final response;
    MainDataModelInstance.mainData.prepareFinalData();
    response = await http.post(
      Uri.parse(ApiList.formPost),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(MainDataModelInstance.mainData.toJson()),
    );
    return response;
  }
}

class ApiList {
  static String formPost = 'http://127.0.0.1/web/php/handle-json.php';
}
