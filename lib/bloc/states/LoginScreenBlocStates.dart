import 'package:equatable/equatable.dart';

abstract class LoginScreenBlocState extends Equatable {}

class LatestLoginScreenState extends LoginScreenBlocState {
  String formStatus;

  LatestLoginScreenState({this.formStatus});

  @override
  List<Object> get props => [formStatus];
}
