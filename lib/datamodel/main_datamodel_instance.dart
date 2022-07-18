import 'package:ninjastrategy2/datamodel/main_data_model.dart';

class MainDataModelInstance {
  static MainDataModel mainData = MainDataModel();
  static String currentAccount = "";

  static newMainData() {
    mainData = MainDataModel();
  }
}
