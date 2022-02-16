part of 'add_property_cubit.dart';

@immutable
abstract class AddPropertyState {}

class AddPropertyInitial extends AddPropertyState {}

class LoadingState extends AddPropertyState {}

class FailureSubmitState extends AddPropertyState {
  final String errorMessage;

  FailureSubmitState(this.errorMessage);

  @override
  String toString() {
    return 'FailureSubmitState{errorMessage: $errorMessage}';
  }
}

class SuccessSubmitState extends AddPropertyState {
  SuccessSubmitState(this.data);
  
  final Datum data;
  
  @override
  List<Object> get props => [data];
}
