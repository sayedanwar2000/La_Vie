import 'package:flutter/material.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Signup extends StatelessWidget {
  TextEditingController fname = TextEditingController();
  TextEditingController Lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 300,
            start: 45,
            end: 45,
            bottom: 45,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Name',
                          style: defaultStyle,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        defaultTextFormField(
                          valid: (value){
                            if(value!.isEmpty)
                              return 'First name must not be empty';
                            return null;
                          },
                          type: TextInputType.text,
                          controll: fname,
                          isPassword: false,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last Name',
                          style: defaultStyle,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        defaultTextFormField(
                          valid: (value){
                            if(value!.isEmpty)
                              return 'Last name must not be empty';
                            return null;
                          },
                          type: TextInputType.text,
                          controll: Lname,
                          isPassword: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'E-mail',
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
                type: TextInputType.text,
                controll: password,
                isPassword: true,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Confirm password',
                style: defaultStyle,
              ),
              SizedBox(
                height: 3,
              ),
              defaultTextFormField(
                valid: (value){
                  if(value!.isEmpty)
                    return ' Confirm password must not be empty';
                  return null;
                },

                type: TextInputType.visiblePassword,
                controll: confirm_password,
                isPassword: true,
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
    );
  }
}
