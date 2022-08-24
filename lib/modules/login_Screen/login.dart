import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/login_Screen/cubit/cubit.dart';
import 'package:la_vie/modules/login_Screen/cubit/states.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginStates>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        LoginCubit cubit = LoginCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 300,
                start: 45,
                end: 45,
                bottom: 45,
              ),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: defaultStyle,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    defaultTextFormField(
                      valid: (value){
                        if(value!.isEmpty)
                          return 'Email address must not be empty';
                        return null;
                      },
                      type: TextInputType.emailAddress,
                      controll: email,
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Password',
                      style: defaultStyle,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    defaultTextFormField(
                      valid: (value){
                        if(value!.isEmpty)
                          return 'Password must not be empty';
                        return null;
                      },
                      type: TextInputType.visiblePassword,
                      controll: password,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    state is LoginLoadingStates ? Center(child: CircularProgressIndicator()) : defaultButtom(
                      text: 'Login',
                      function: (){
                        if(formKey.currentState!.validate()){
                          cubit.loginUser(email: email.text, password: password.text);
                        }
                      },
                    ),
                    SizedBox(
                      height: 33,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                            start: 5,
                            end: 5,
                          ),
                          child: Text(
                            'or countinue with',
                            style: defaultStyle.copyWith(
                                fontSize: 10
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 37,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 110,
                        ),
                        Expanded(
                          child: InkWell(
                            child: Image.asset(
                              'assets/images/google.png',
                              width: 33,
                              height: 33,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: InkWell(
                            child: Image.asset(
                              'assets/images/facebook.png',
                              width: 33,
                              height: 33,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
