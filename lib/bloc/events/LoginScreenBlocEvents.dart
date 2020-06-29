abstract class LoginScreenBlocEvents {}

class FormSubmittedEvent extends LoginScreenBlocEvents {
  String email;
  String password;

  FormSubmittedEvent({this.email, this.password});
}
