part of '../utils/import-path/app_import_path.dart';

abstract class MyApiHandle {
  /// [getMySocial] return data from api
  Future<ModelMyMainSocial?> getMySocial(BuildContext context);

  /// [getMyPremium] return data from api
  Future<MyModelMainPremium?> getMyPremium(BuildContext context);
}
