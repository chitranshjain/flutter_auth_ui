import 'dart:async';

import 'package:flutterauthui/bloc/events/LoginScreenBlocEvents.dart';
import 'package:regexed_validator/regexed_validator.dart';

class LoginScreenBloc {
  String formStatus = 'invalid';

  final _loginStateController = StreamController<String>();
  StreamSink<String> get _inStatus => _loginStateController.sink;

  Stream<String> get status => _loginStateController.stream;

  final _loginEventController = StreamController<LoginScreenBlocEvents>();

  Sink<LoginScreenBlocEvents> get loginEventSink => _loginEventController.sink;

  LoginScreenBloc() {
    _loginEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(LoginScreenBlocEvents event) {
    if (event is FormSubmittedEvent) {
      if (validator.email(event.email) && ((event.password).length > 6)) {
        formStatus = 'valid';
      }

      _inStatus.add(formStatus);
    }
  }

  void dispose() {
    _loginEventController.close();
    _loginStateController.close();
  }
}
