part of '../../utils/import-path/app_import_path.dart';

class ModelMyMainSocial {
  /// properties list
  List<ModelMyAppSocial>? social;

  /// constructor
  ModelMyMainSocial({this.social});

  ModelMyMainSocial.fromJson(Map<String, dynamic> json) {
    if (json[MyApiKey.social] != null) {
      // initial value default for list
      social = <ModelMyAppSocial>[];

      json[MyApiKey.social].forEach((app) {
        // app:   {'id':5,'nameApp':'facebook'} as map
        // app:   {'id':6,'nameApp':'x'} as map
        social!.add(ModelMyAppSocial.fromJson(app));
        // list type object dart because controller in data easy include `view`
        // social<ModelAppSocial> [
        //   ModelAppSocial(id:5,nameApp:'facebook'),
        //   ModelAppSocial(id:6,nameApp:'x')
        // ]
      });
    }
  }

  /// [toJson] convert list<ModelAppSocial> object dart to map `json`
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (social != null) {
      data[MyApiKey.social] = social!.map((app) => app.toJson()).toList();

      /// 'social' :[
      ///  {'id':5,'nameApp':'facebook'}
      ///  {'id':6,'nameApp':'x'}
      /// ]
    }
    return data;
  }

  void test1() {
    List l1 = [1, 5, 6, 7, 8];
    l1.forEach((item) {
      dev.log(item);
    });
    // [
    // 4
    // 8
    // 9
    // 10
    // 11
    // ]
    List newList = l1.map((x) => x + 3).toList();
  }
}
