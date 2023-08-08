part of '../utils/import-path/app_import_path.dart';

class MyApiKey {
  // key specific api
  static const String id = 'id';
  static const String nameApp = 'nameApp';
  static const String nameCat = 'nameCat';
  static const String type = 'type';
  static const String rating = 'rating';
  static const String size = 'size';
  static const String download = 'download';
  static const String image = 'image';
  static const String images = 'images';
  static const String description = 'description';
  static const String price = 'price';
  static const String urlApp = 'urlApp';
  static const String social = 'social';
  static const String games = 'games';
  static const String artDesign = 'artDesign';
  static const String education = 'education';
  static const String premium = 'premium';
  static const String details = 'details';

  /// [myTermsUrl] website load `html`
  static String myTermsUrl(BuildContext context) =>
      'https://gifted-gray-loincloth.cyclic.app/html/${MyAppTheme.myThemeState(context)}/terms';

  /// End Point
  static const String myBaseApi =
      'https://gifted-gray-loincloth.cyclic.app/api/';
  static const String myApiSocial = '/social';
  static const String myApiPremium = '/premium';
}
