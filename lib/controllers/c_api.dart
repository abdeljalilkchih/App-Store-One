part of '../utils/import-path/app_import_path.dart';

class MyControllerAPI extends ChangeNotifier {
  bool myLoading = false;

  /// [changeMyLoading] change value loading
  set changeMyLoading(bool value) {
    myLoading = value;
    notifyListeners();
  }

  /// [myDataSocial] save object from model [ModelMyMainSocial]
  ModelMyMainSocial? myDataSocial;
  Future<void> fetchDataSocial(BuildContext context) async {
    /// start loading
    changeMyLoading = true;

    /// storage data from API
    myDataSocial = await MyApi().getMySocial(context);

    /// stop loading
    changeMyLoading = false;

    /// update data in UI
    notifyListeners();
  }

  /// [dataPremium] save object from model [MyModelMainPremium]
  MyModelMainPremium? myDataPremium;

  /// [fetchDataPremium]
  /// [fetchDataPremium]
  Future<void> fetchDataPremium(BuildContext context) async {
    // start loading
    changeMyLoading = true;

    // storage data from Api
    myDataPremium = await MyApi().getMyPremium(context);

    // stop loading
    changeMyLoading = false;

    // update data in UI
    notifyListeners();
  }

  Future<void> cacheStorageData(context) async {
    /// storage data from API
    myDataSocial = await MyApi().getMySocial(context);
    // storage data from Api
    myDataPremium = await MyApi().getMyPremium(context);
  }
}
