import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/layout/la_vie_layout/la_vie.dart';
import 'package:la_vie/modules/home/cubit/cubit_home.dart';
import 'package:la_vie/modules/home/home.dart';
import 'package:la_vie/modules/login_Screen/cubit/cubit.dart';
import 'package:la_vie/modules/login_Screen/login.dart';
import 'package:la_vie/modules/search_screen/search_plants.dart';
import 'package:la_vie/modules/signup_screen/signup.dart';
import 'package:la_vie/modules/splash_screen/splash.dart';
import 'package:la_vie/shared/components/constants.dart';
import 'package:la_vie/shared/network/remote/dio_helper.dart';
import 'package:la_vie/shared/styles/colors.dart';
import 'package:la_vie/shared/styles/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => HomeCubit()),
        BlocProvider(create: (BuildContext context) => LoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:lightTheme,
        home:  SearchPlants(),
      ),
    );
  }
}
