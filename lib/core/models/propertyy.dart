class Propertiess {
  Propertiess({
    required this.address,
    required this.type,
    required this.bedroom,
    required this.sittingRoom,
    required this.kitchen,
    required this.bathroom,
    required this.toilet,
    required this.propertyOwner,
    required this.description,
    required this.validFrom,
    required this.validTo,
    required this.images,
  });

  String address;
  String type;
  int bedroom;
  int sittingRoom;
  int kitchen;
  int bathroom;
  int toilet;
  String propertyOwner;
  String description;
  DateTime validFrom;
  DateTime validTo;
  List<dynamic> images;

  factory Propertiess.fromJson(Map<String, dynamic> json) => Propertiess(
        address: json["address"],
        type: json["type"],
        bedroom: json["bedroom"],
        sittingRoom: json["sittingRoom"],
        kitchen: json["kitchen"],
        bathroom: json["bathroom"],
        toilet: json["toilet"],
        propertyOwner: json["propertyOwner"],
        description: json["description"],
        validFrom: DateTime.parse(json["validFrom"]),
        validTo: DateTime.parse(json["validTo"]),
        images: List<dynamic>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "type": type,
        "bedroom": bedroom,
        "sittingRoom": sittingRoom,
        "kitchen": kitchen,
        "bathroom": bathroom,
        "toilet": toilet,
        "propertyOwner": propertyOwner,
        "description": description,
        "validFrom":
            "${validFrom.year.toString().padLeft(4, '0')}-${validFrom.month.toString().padLeft(2, '0')}-${validFrom.day.toString().padLeft(2, '0')}",
        "validTo":
            "${validTo.year.toString().padLeft(4, '0')}-${validTo.month.toString().padLeft(2, '0')}-${validTo.day.toString().padLeft(2, '0')}",
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
