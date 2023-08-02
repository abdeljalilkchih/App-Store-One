part of '../../utils/import-path/app_import_path.dart';

class ModelMyAppSocial {
  /// properties
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? download;
  String? image;
  List<String>? images;
  String? description;

  ModelMyAppSocial({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.images,
    this.description,
  });

  /// constructor name
  ModelMyAppSocial.fromJson(Map<String, dynamic> json) {
    id = json[MyApiKey.id];
    nameApp = json[MyApiKey.nameApp];
    type = json[MyApiKey.type];
    rating = json[MyApiKey.rating];
    size = json[MyApiKey.size];
    download = json[MyApiKey.download];
    image = json[MyApiKey.image];

    /// json['images'] as dynamic list
    images = json[MyApiKey.images].cast<String>();
    description = json[MyApiKey.description];
  }

  /// [toJson] convert object dart to map `json`
  Map<String, dynamic> toJson() {
    // List l1 = [];
    // create map empty
    final Map<String, dynamic> data = <String, dynamic>{};

    data[MyApiKey.id] = id;
    data[MyApiKey.nameApp] = nameApp;
    data[MyApiKey.type] = type;
    data[MyApiKey.rating] = rating;
    data[MyApiKey.size] = size;
    data[MyApiKey.download] = download;
    data[MyApiKey.image] = image;
    data[MyApiKey.images] = images;
    data[MyApiKey.description] = description;
    // return map<String ,dynamic> data
    return data;
  }
}
