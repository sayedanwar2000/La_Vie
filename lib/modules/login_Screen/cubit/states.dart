import 'package:la_vie/models/login_model.dart';

abstract class LoginStates{}

class LoginInitialStates extends LoginStates{}

class LoginLoadingStates extends LoginStates{}

class LoginSuccesSStates extends LoginStates{
  final LoginModel logModel;
  LoginSuccesSStates(this.logModel);
}

class LoginErrorStates extends LoginStates{
  final String error;
  LoginErrorStates(this.error);
}