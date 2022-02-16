import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lekkiprop/core/models/images.dart';
import 'package:lekkiprop/core/models/properties.dart';
import 'package:lekkiprop/core/models/properties_home.dart';

class PropertyRepository {
  static String mainUrl = "https://sfc-lekki-property.herokuapp.com/api";

  final Dio dio = Dio();

  var getPropertitiesUrl = "$mainUrl/v1/lekki/property";
  var getPropertitiesId = "$mainUrl/v1/lekki/property/";
  var addProperties = "$mainUrl/v1/lekki/property";

  Future<ResponseWrapper> getProperty() async {
    try {
      Response response = await dio.get(getPropertitiesUrl);
      if (response.statusCode == 200) {
        return ResponseWrapper.fromJson(response.data);
      } else {
        throw Exception(response.data);
      }
    } catch (e, stackTrace) {
      print("Expection occured: $e stracktrace: $stackTrace");
      return ResponseWrapper.withError("$e");
    }
  }

  Future<Datum> addProperty(Datum addProperty) async {
    try {
      Response response =
          await dio.post(addProperties, data: addProperty.toJson());
      print(response.data);
      return Datum.fromJson(response.data);
    } catch (e, stackTrace) {
      print("Expection occured: $e stracktrace: $stackTrace");
      throw e;
    }
  }

  Future<ResponseWrapper> getDetailsId(int id) async {
    try {
      Response response = await dio.get(getPropertitiesId + "$id");
      // print(response.data);
      if (response.statusCode == 200) {
        return ResponseWrapper.fromJson(response.data);
      } else {
        throw Exception(response.data);
      }
    } catch (e, stackTrace) {
      print("Expection occured: $e stracktrace: $stackTrace");
      return ResponseWrapper.withError("$e");
    }
  }
}
