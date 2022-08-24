import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/models/login_model.dart';
import 'package:la_vie/modules/login_Screen/cubit/states.dart';
import 'package:la_vie/shared/network/remote/dio_helper.dart';

import '../../../shared/network/end_point.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit() : super(LoginInitialStates());
  late LoginModel logModel;
  static LoginCubit get(context) => BlocProvider.of(context);

  void loginUser({
    required String email,
    required String password,
  }){
    emit(LoginLoadingStates());
    DioHelper.postData(
    url: Login,
    data:
  {
      'email' : email,
      'password' : password,
  },
  ).then((value){
      logModel = LoginModel.fromJson(value.data);
    emit(LoginSuccesSStates(logModel));
  }).catchError((error){
    emit(LoginErrorStates(error.toString()));
  });
  }
}