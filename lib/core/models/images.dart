import 'package:lekkiprop/core/models/properties.dart';

class Image {
  final List<Datum> sources;
  String originalname;
  String path;

  Image({
    required this.sources,
    required this.originalname,
    required this.path,
  });

  Image.fromJson(Map<String, dynamic> json)
      : sources = (json["source"] as  List).map((e) => new Datum.fromJson(e)).toList(),
        originalname = json["originalname"],
        path = json["path"];

  Map<String, dynamic> toJson() => {
        "originalname": originalname,
        "path": path,
      };
}
