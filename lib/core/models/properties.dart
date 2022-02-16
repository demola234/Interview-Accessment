import 'dart:core';


/// Datum contains all data from the data Response List

class Datum {
  /// Datum Types
  String address;
  int bedroom;
  int sittingRoom;
  int kitchen;
  int bathroom;
  int toilet;
  String propertyOwner;
  String description;
  

  /// Datum Constructor
  Datum({
    required this.address,
    required this.bedroom,
    required this.sittingRoom,
    required this.kitchen,
    required this.bathroom,
    required this.toilet,
    required this.propertyOwner,
    required this.description,
  });

  /// Converts the Map Object from a Json Object into
  /// Readable Dart format
  Datum.fromJson(Map<String, dynamic> json)
      : address = json["address"],
        bedroom = json["bedroom"],
        sittingRoom = json["sittingRoom"],
        kitchen = json["kitchen"],
        bathroom = json["bathroom"],
        toilet = json["toilet"],
        propertyOwner = json["propertyOwner"],
        description = json["description"];

  /// Converts the Dart formatted Object to a Json Object
  Map<String, dynamic> toJson() => {
        "bedroom": bedroom,
        "sittingRoom": sittingRoom,
        "kitchen": kitchen,
        "bathroom": bathroom,
        "toilet": toilet,
        "propertyOwner": propertyOwner,
        "description": description,
      };
}
