import 'package:lekkiprop/core/models/properties.dart';

class ResponseWrapper {
  String status;
  int code;
  String message;
  List<Datum> data;

  ResponseWrapper(
    this.status,
    this.code,
    this.message,
    this.data,
  );

  ResponseWrapper.fromJson(Map<String, dynamic> json)
      : status = json["status"],
        code = json["code"],
        message = "",
        data = List<Datum>.from(json["data"].map((x) => Datum.fromJson(x)));

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };

  ResponseWrapper.withError(String errorValue)
      : status = "",
        code = 400,
        message = errorValue,
        data = [];
}
