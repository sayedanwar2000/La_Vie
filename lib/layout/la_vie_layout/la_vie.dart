import 'package:flutter/material.dart';
import 'package:la_vie/modules/login_Screen/login.dart';
import 'package:la_vie/modules/signup_screen/signup.dart';
import 'package:la_vie/modules/splash_screen/splash.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/components/constants.dart';
import 'package:la_vie/shared/styles/colors.dart';

class LaVie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        body: DefaultTabController(
          length: 2,
          initialIndex: 1,
          child: Container(
            color: color,
            height: double.infinity,
            padding: const EdgeInsets.all(0),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                ...positionedImages(),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Center(
                      child: logoLaVie(
                        fontSize: 27,
                        left: 48,
                        top: 20,
                        width: 23,
                        height: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    SizedBox(
                      height: 50,
                      child: AppBar(
                        backgroundColor:color,
                        elevation: 0,
                        bottom:  TabBar(
                            indicatorColor:defaultColor,
                            indicatorSize:TabBarIndicatorSize.label ,
                            labelColor: defaultColor,
                            unselectedLabelColor: Colors.grey,

                            tabs: const[
                              Tab(
                                text: 'Sign in',
                              ),
                              Tab(
                                text: 'Loge In',
                              )
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Signup(),
                              Login(),
                            ],
                          ),
                        ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
