import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'dart:js' as js;
import 'dart:html' show AnchorElement;

class ApiCall {
  void downloadFile(String res, String fileName) {
    AnchorElement()
      ..href = '${Uri.dataFromString(res, mimeType: 'text/plain', encoding: utf8)}'
      ..download = '$fileName.cs'
      ..style.display = 'none'
      ..click();
  }

  Future submitForm() async {
    final response;
    MainDataModelInstance.mainData.prepareFinalData();
    //print(jsonEncode(MainDataModelInstance.mainData.toJson()));
    try {
      response = await http.post(
        Uri.parse(ApiList.formPost),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(MainDataModelInstance.mainData.toJson()),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        downloadFile(response.body.toString(), MainDataModelInstance.mainData.name);
      }
      return response;
    } on Exception catch (e) {
      print('ApiCall Error: $e');
    }
    return 'CAN NOT PROCESS!!!:';
  }
}

class ApiList {
  static String formPost = '/web/php/handle-json.php';
}
