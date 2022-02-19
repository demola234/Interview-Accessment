import 'package:flutter/material.dart';
import 'package:lekkiprop/core/models/propertyy.dart';
import 'package:lekkiprop/core/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class AddPropertyBloc {
  /// Initites The Network Repository
  final PropertyRepository _propertyRepository = PropertyRepository();
  final BehaviorSubject<Propertiess> _subject = BehaviorSubject<Propertiess>();

  final TextEditingController addressController = TextEditingController();
  final TextEditingController bedroomController = TextEditingController();
  final TextEditingController sittingRoomController = TextEditingController();
  final TextEditingController kitchenController = TextEditingController();
  final TextEditingController toiletController = TextEditingController();
  final TextEditingController bathroomController = TextEditingController();
  final TextEditingController propertyOwnerController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  appProperty() async {
    String _address = addressController.text;
    int _bedroom = int.parse(bedroomController.text);
    int _sittingroom = int.parse(sittingRoomController.text);
    int _kitchen = int.parse(kitchenController.text);
    int _toilet = int.parse(toiletController.text);
    int _bathroom = int.parse(bathroomController.text);
    String _propertyOwner = propertyOwnerController.text;
    String _description = descriptionController.text;

    final request = Propertiess(
        address: _address,
        bedroom: _bedroom,
        sittingRoom: _sittingroom,
        kitchen: _kitchen,
        bathroom: _bathroom,
        toilet: _toilet,
        propertyOwner: _propertyOwner,
        description: _description,
        images: [],
        type: 'duplex',
        validFrom: DateTime.now(),
        validTo: DateTime.now());

    Propertiess response = await _propertyRepository.add(request);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<Propertiess> get subject => _subject;
}

final addPropertyBloc = AddPropertyBloc();
