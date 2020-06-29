import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterauthui/LoginPage.dart';
import 'package:flutterauthui/bloc/events/LoginScreenBlocEvents.dart';
import 'package:flutterauthui/bloc/states/LoginScreenBlocStates.dart';
import 'package:regexed_validator/regexed_validator.dart';

class LoginScreenBloc extends Bloc<LoginScreenBlocEvent, LoginScreenBlocState> {
  @override
  LoginScreenBlocState get initialState =>
      LatestLoginScreenState(formStatus: 'invalid');

  @override
  Stream<LoginScreenBlocState> mapEventToState(
      LoginScreenBlocEvent event) async* {
    if (event is FormSubmittedEvent) {
      if (validator.email(event.email) && validator.password(event.password)) {
        String status = 'valid';
        yield LatestLoginScreenState(formStatus: status);
      } else {
        String status = 'invalid';
        yield LatestLoginScreenState(formStatus: status);
      }
    }
  }
}
