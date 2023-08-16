part of '../../utils/import-path/app_import_path.dart';

class MyModelAppPremium {
  String? id;
  String? nameApp;
  String? nameCat;
  String? type;
  String? rating;
  String? size;
  String? image;
  String? description;
  String? price;
  String? download;
  List<String>? images;
  String? urlApp;
  MyModelAppPremium({
    this.id,
    this.nameApp,
    this.nameCat,
    this.type,
    this.rating,
    this.size,
    this.image,
    this.description,
    this.price,
    this.download,
    this.images,
    this.urlApp,
  });
  MyModelAppPremium.fromJson(Map<String, dynamic> json) {
    id = json[MyApiKey.id];
    nameApp = json[MyApiKey.nameApp];
    nameCat = json[MyApiKey.nameCat];
    type = json[MyApiKey.type];
    rating = json[MyApiKey.rating];
    size = json[MyApiKey.size];
    image = json[MyApiKey.image];
    description = json[MyApiKey.description];
    price = json[MyApiKey.price];
    download = json[MyApiKey.download];
    images = json[MyApiKey.images].cast<String>();
    urlApp = json[MyApiKey.urlApp];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[MyApiKey.id] = id;
    data[MyApiKey.nameApp] = nameApp;
    data[MyApiKey.nameCat] = nameCat;
    data[MyApiKey.type] = type;
    data[MyApiKey.rating] = rating;
    data[MyApiKey.size] = size;
    data[MyApiKey.image] = image;
    data[MyApiKey.description] = description;
    data[MyApiKey.price] = price;
    data[MyApiKey.download] = download;
    data[MyApiKey.images] = images;
    data[MyApiKey.urlApp] = urlApp;
    return data;
  }
}
