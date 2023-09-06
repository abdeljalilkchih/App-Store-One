part of '../../import-path/app_import_path.dart';

class BuildQueryApp {
  // Constructor private
  BuildQueryApp._();

  /// create object only for DB
  static final BuildQueryApp db = BuildQueryApp._();

  /// create object from Database not initial value
  Database? database;

  /// [hasDB] check the DataBase
  Future<Database> get hasDB async =>
      database ??= await ConnectionDB().initDB();

  /// Create Read  Update Delete  `CRUD`

  /// create [insertApp] return -1 not add data in DB
  /// add application on DB return number create row
  Future<int> insertApp(MyModelDBApp data) async {
    return hasDB
        .then((Database dbConnection) =>
            dbConnection.insert(TableApps.nameTable, data.toMap()))
        .onError((error, stackTrace) {
      dev.log(MyAppLangKey.errorDownloading.tr(),
          name: 'insertApp', error: error.toString());
      return -1;
    });
  }

  /// [deleteAppById] delete app by id return int number row
  ///
  /// when error return -1
  Future<int> deleteAppById(MyModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.delete(TableApps.nameTable,
            where: '${TableApps.colId} = ?', whereArgs: [model.id]))
        .onError((error, stackTrace) {
      dev.log(MyAppLangKey.errorUninstalling.tr(),
          name: 'deleteAppById', error: error.toString());
      return -1;
    });
  }

  /// [getListApps] return  list from ModelAppDB
  ///
  /// when error return list empty form type ModelAppDB
  Future<List<MyModelDBApp>> get getAppList async {
    return hasDB
        .then((dbConnection) => dbConnection
            .query(TableApps.nameTable,
                orderBy: '${TableApps.colTimeStamp} desc')
            .then((listData) => listData.isNotEmpty
                ? listData.map((app) => MyModelDBApp.fromMap(map: app)).toList()
                : <MyModelDBApp>[]))
        .onError((error, stackTrace) {
      dev.log('error get all app', name: 'getAppList', error: error.toString());
      return <MyModelDBApp>[];
    });
  }

  /// [getAppById] return data app
  ///
  ///  return null is not save in dataBase
  Future<MyModelDBApp?> getAppById(MyModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.query(
              TableApps.nameTable,
              where: '${TableApps.colId} = ?',
              whereArgs: [model.id],
            ).then((listData) => listData.isNotEmpty
                ? MyModelDBApp.fromMap(map: listData.first)
                : null))
        .onError((error, stackTrace) {
      dev.log('error get app by id ',
          name: 'getAppById', error: error.toString());
      return null;
    });
  }

  ///  [updateApp] update app data  by Id
  ///
  /// return -1 when error update
  Future<int> updateAppById(MyModelDBApp model) async {
    return hasDB
        .then((dbConnection) => dbConnection.update(
              TableApps.nameTable,
              model.toMap(),
              where: '${TableApps.colId} = ?',
              whereArgs: [model.id],
            ))
        .onError((error, stackTrace) {
      dev.log('error update app',
          name: 'updateAppById', error: error.toString());
      return -1;
    });
  }
}
