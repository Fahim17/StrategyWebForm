import 'package:ninjastrategy2/datamodel/main_data_model.dart';
import 'package:ninjastrategy2/services/components_input_tracking.dart';

class MainDataModelInstance {
  static MainDataModel mainData = MainDataModel();
  static String currentAccount = "";

  static newMainData() {
    ComponentInputCountsInstance.clearInputCountsInstance();
    mainData = MainDataModel();
  }
}
