import 'package:bloc/bloc.dart';
import 'package:lekkiprop/core/models/properties.dart';
import 'package:lekkiprop/core/repository/repository.dart';
import 'package:meta/meta.dart';

part 'add_property_state.dart';

class AddPropertyCubit extends Cubit<AddPropertyState> {
  final PropertyRepository _propertyRepository = PropertyRepository();
  AddPropertyCubit() : super(AddPropertyInitial());

  void addProperty(Datum addProperty) async {
    emit(LoadingState());
    try {
      var result = await _propertyRepository.addProperty(addProperty);
      emit(SuccessSubmitState(result));
    } catch (e) {
      emit(FailureSubmitState("An Error Occured"));
    }
  }
}
