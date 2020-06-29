import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginScreenBlocEvent extends Equatable {}

class GoToLoginEvent extends LoginScreenBlocEvent {
  @override
  List<Object> get props => [];
}

class FormSubmittedEvent extends LoginScreenBlocEvent {
  String email;
  String password;

  @override
  List<Object> get props => [
        {this.email, this.password}
      ];
}
