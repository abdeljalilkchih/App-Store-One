part of '../../import-path/app_import_path.dart';

class MyModelDBApp {
  /// properties
  String? id;
  String? name;
  String? image;
  String? type;
  String? size;
  String? rating;
  String? timeStamp;

  /// constructor
  MyModelDBApp({
    this.id,
    this.name,
    this.image,
    this.type,
    this.size,
    this.rating,
    this.timeStamp,
  });

  /// [ModelDBApp.fromMap] get app from DB
  MyModelDBApp.fromMap({required Map<String, dynamic> map})
      : assert(map.isNotEmpty),
        id = map[TableApps.colId],
        name = map[TableApps.colNameApp],
        type = map[TableApps.colType],
        rating = map[TableApps.colRating],
        size = map[TableApps.colSize],
        image = map[TableApps.colImage],
        timeStamp = map[TableApps.colTimeStamp];

  /// [toMap] add  app to DB
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[TableApps.colId] = id;
    data[TableApps.colNameApp] = name;
    data[TableApps.colType] = type;
    data[TableApps.colRating] = rating;
    data[TableApps.colSize] = size;
    data[TableApps.colImage] = image;
    data[TableApps.colTimeStamp] = timeStamp;

    return data;
  }
}
