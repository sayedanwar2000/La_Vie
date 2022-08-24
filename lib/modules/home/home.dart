import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/home/cubit/cubit_home.dart';
import 'package:la_vie/modules/home/cubit/states_home.dart';
import 'package:la_vie/modules/profile_screen/profile.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, Object? state) {  },
      builder: (context, Object? state){
        HomeCubit cubit = HomeCubit.get(context);
        return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: cubit.currentIndex ,
              items: [
                Image.asset(
                  'assets/images/leave 1 (Traced).png',
                  fit: BoxFit.cover,
                  color: cubit.currentIndex==0 ? Colors.white : Colors.black,
                ),
                Image.asset(
                  'assets/images/qr-code-scan 1 (Traced).png',
                  fit: BoxFit.cover,
                  color: cubit.currentIndex==1 ? Colors.white : Colors.black,
                ),
                Image.asset(
                    'assets/images/home.png',
                  color: cubit.currentIndex==2 ? Colors.white : Colors.black,
                  fit: BoxFit.cover,
                ),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.asset(
                        'assets/images/Bell.png',
                      fit: BoxFit.cover,
                      color: cubit.currentIndex==3 ? Colors.white : Colors.black,
                    ),
                    Image.asset(
                        'assets/images/Ellipse 1843.png',
                      fit: BoxFit.cover,
                      color: cubit.currentIndex==3 ? Colors.white : defaultColor,
                    ),
                  ],
                ),
                Image.asset(
                    'assets/images/person.png',
                  fit: BoxFit.cover,
                  color: cubit.currentIndex==4 ? Colors.white : Colors.black,
                ),
              ],
              buttonBackgroundColor: defaultColor,
              backgroundColor: color,
              onTap: (index) {
                  cubit.chaneIndex(index);
              },
            ),
            body: cubit.screen[cubit.currentIndex],
        );
      },

    );
  }
}
