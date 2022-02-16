import 'dart:core';

class Datum {
  String address;
  int bedroom;
  int sittingRoom;
  int kitchen;
  int bathroom;
  int toilet;
  String propertyOwner;
  String description;

  Datum(
    this.address,
    this.bedroom,
    this.sittingRoom,
    this.kitchen,
    this.bathroom,
    this.toilet,
    this.propertyOwner,
    this.description,
  );

  Datum.fromJson(Map<String, dynamic> json)
      : address = json["address"],
        bedroom = json["bedroom"],
        sittingRoom = json["sittingRoom"],
        kitchen = json["kitchen"],
        bathroom = json["bathroom"],
        toilet = json["toilet"],
        propertyOwner = json["propertyOwner"],
        description = json["description"];

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
