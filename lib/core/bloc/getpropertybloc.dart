import 'package:lekkiprop/core/models/properties_home.dart';
import 'package:lekkiprop/core/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class PropertyBloc {
  /// Initites The Network Repository
  final PropertyRepository _propertyRepository = PropertyRepository();
  final BehaviorSubject<ResponseWrapper> _subject =
      BehaviorSubject<ResponseWrapper>();

  getProperty() async {
    ResponseWrapper response = await _propertyRepository.getProperty();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ResponseWrapper> get subject => _subject;
}

final propertyBloc = PropertyBloc();
