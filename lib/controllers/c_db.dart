part of '../utils/import-path/app_import_path.dart';

class MyControllerDB extends ChangeNotifier {
  String? myTitleBtn;

  /// [manageInstallation]
  Future<bool> manageInstallation(
    MyModelDBApp data,
  ) async {
    if (await BuildQueryApp.db.getAppById(data) == null) {
      // install
      return await installApp(data);
    } else {
      // uninstall
      return await unInstallApp(data);
    }
  }

  /// [installApp]
  ///
  /// return true when install
  ///
  /// return false when error install
  Future<bool> installApp(MyModelDBApp data) async {
    if (await BuildQueryApp.db.insertApp(data) > 0) {
      // ✅
      myTitleBtn = MyAppLangKey.uninstall;
      notifyListeners();
      return true;
    } else {
      // ❌
      return false;
    }
  }

  /// [unInstallApp]
  ///
  /// return true when uninstall
  ///
  /// return false when error uninstall
  Future<bool> unInstallApp(MyModelDBApp data) async {
    if (await BuildQueryApp.db.deleteAppById(data) > 0) {
      // ✅
      myTitleBtn = MyAppLangKey.install;
      notifyListeners();
      return true;
    } else {
      // ❌
      return false;
    }
  }

  Future<void> checkInDB(MyModelDBApp data) async {
    if (await BuildQueryApp.db.getAppById(data) == null) {
      myTitleBtn = MyAppLangKey.install;
    } else {
      myTitleBtn = MyAppLangKey.uninstall;
    }
    notifyListeners();
  }

  /// covert object details for ModeDBApp
  MyModelDBApp convertTypeDB(ModelMyAppSocial data) {
    return MyModelDBApp(
      id: data.id,
      name: data.nameApp,
      image: data.image,
      type: data.type,
      size: data.size,
      rating: data.rating,
      timeStamp: DateTime.now().microsecondsSinceEpoch.toString(),
    );
  }

  /// storage all app in database
  List<MyModelDBApp>? dataList;

  /// [fetchDataFromDB] call database get data as List<ModelDBApp>
  Future<void> get fetchDataFromDB async {
    dataList = await BuildQueryApp.db.getAppList;
    notifyListeners();
  }
}
