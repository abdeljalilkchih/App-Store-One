part of '../../utils/import-path/app_import_path.dart';

class MyModelMainPremium {
  MyModelPremium? premium;

  MyModelMainPremium({this.premium});

  MyModelMainPremium.fromJson(Map<String, dynamic> json) {
    premium = json[MyApiKey.premium] != null
        ? MyModelPremium.fromJson(json[MyApiKey.premium])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (premium != null) {
      data[MyApiKey.premium] = premium!.toJson();
    }
    return data;
  }
}
