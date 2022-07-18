import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ninjastrategy2/datamodel/main_datamodel_instance.dart';
import 'dart:js' as js;
import 'dart:html' show AnchorElement;

class ApiCall {
  void downloadFile(String res, String fileName) {
    AnchorElement()
      ..href =
          '${Uri.dataFromString(res, mimeType: 'text/plain', encoding: utf8)}'
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
        downloadFile(
            response.body.toString(), MainDataModelInstance.mainData.name);
      }
      return response;
    } on Exception catch (e) {
      print('ApiCall Error: $e');
    }
    return 'CAN NOT PROCESS!!!:';
  }

  Future<bool> checkDownload() async {
    var response = await http.get(Uri.parse(ApiList.checkDls));
    if (response.statusCode != 200) return false;
    final data = jsonDecode(response.body.toString());
    for (int i = 1; i < data['values'].length; i++) {
      if (data['values'][i][0].trim() ==
          MainDataModelInstance.currentAccount.trim()) {
        var n = int.tryParse(data['values'][i][2]);
        if (n == null) return false;
        if (n > 0) {
          return true;
        } else {
          return false;
        }
      }
    }
    return false;
  }

  Future<bool> useDownload() async {
    var response = await http.get(Uri.parse(ApiList.useDl));
    if (response.statusCode != 200) return false;
    final data = jsonDecode(response.body.toString());
    if (data['status'].trim() == "success") {
      return true;
    } else {
      return false;
    }
  }
}

class ApiList {
  static String formPost = '/web/php/handle-json.php';
  static String checkDls =
      'https://sheets.googleapis.com/v4/spreadsheets/1nFuyl0sTQCdwuIcUm_GbFM9FacWUt9AdEG-w0yneZ1U/values/Payments?&key=AIzaSyCIEvidnExfggQT9QSKUAULrx2qfSXjXNk';
  static String useDl =
      'https://hooks.zapier.com/hooks/catch/12930658/bg82sgx/?email=' +
          MainDataModelInstance.currentAccount;

  // static String formPost = 'http://127.0.0.1/web/php/handle-json.php';
}
