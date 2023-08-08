part of '../utils/import-path/app_import_path.dart';

class MyApi implements MyApiHandle {
  /// [getMySocial] get data social app
  @override
  Future<ModelMyMainSocial?> getMySocial(BuildContext context) async {
    try {
      /// 1 handle Url
      Uri myUrl = Uri.parse(
          '${MyApiKey.myBaseApi}${MyAppLangConfig.myCurrentLang(context)}${MyApiKey.myApiSocial}');

      /// 2 Request `get`
      http.Response myResp = await http.get(myUrl);

      /// 3 check status code
      if (myResp.statusCode == 200) {
        /// [req.body] = "{'id':5,'name' :'Mohamed'}"
        /// [convert.json.decode(res.body)] = {'id':5,'name' :'Mohamed'}
        Map<String, dynamic> json = convert.json.decode(myResp.body);

        /// 4 send data to Model return object from `ModelMainSocial`
        return ModelMyMainSocial.fromJson(json);
      } else {
        /// ❌
        dev.log(MyAppLangKey.errorFetchData.tr(), name: 'Api Social');
        return null;
      }
    } catch (error) {
      dev.log('error Fetch Data Social ',
          name: 'Api Social', error: error.toString());
      return null;
    }
  }
}
