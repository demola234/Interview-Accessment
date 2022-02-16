import 'package:lekkiprop/core/models/properties.dart';

/// ResponseWrapper Uses the API response to create a Response Data Class
class ResponseWrapper {
  /// Response Types
  String status;
  int code;
  String message;
  List<Datum> data;

  /// Response Constructor
  ResponseWrapper({
    required this.status,
    required this.code,
    required this.message,
    required this.data,
  });

  /// Converts the Map Object from a Json Object into
  /// Readable Dart format
  ResponseWrapper.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        code = json["code"],
        message = "",
        data = List<Datum>.from(json["data"].map((x) => Datum.fromJson(x)));

  /// Converts the Dart formatted Object to a Json Object
  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };

  /// When response has an error
  ResponseWrapper.withError(String errorValue)
      : status = "",
        code = 400,
        message = errorValue,
        data = [];
}
