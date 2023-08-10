part of '../../utils/import-path/app_import_path.dart';

class MyModelPremium {
  List<MyModelAppPremium>? games;
  List<MyModelAppPremium>? artDesign;
  List<MyModelAppPremium>? education;

  MyModelPremium({this.games, this.artDesign, this.education});
  MyModelPremium.fromJson(Map<String, dynamic> json) {
    if (json[MyApiKey.games] != null) {
      // games =[];
      games = <MyModelAppPremium>[];
      json[MyApiKey.games].forEach((app) {
        games!.add(MyModelAppPremium.fromJson(app));
      });
    }
    if (json[MyApiKey.artDesign] != null) {
      artDesign = <MyModelAppPremium>[];
      json[MyApiKey.artDesign].forEach((app) {
        artDesign!.add(MyModelAppPremium.fromJson(app));
      });
    }
    if (json[MyApiKey.education] != null) {
      education = <MyModelAppPremium>[];
      json[MyApiKey.education].forEach((app) {
        education!.add(MyModelAppPremium.fromJson(app));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (games != null) {
      data[MyApiKey.games] = games!.map((app) => app.toJson()).toList();
    }
    if (artDesign != null) {
      data[MyApiKey.artDesign] = artDesign!.map((app) => app.toJson()).toList();
    }
    if (education != null) {
      data[MyApiKey.education] = education!.map((app) => app.toJson()).toList();
    }
    return data;
  }
}
