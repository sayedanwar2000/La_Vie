import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/blogs_screen/blogs.dart';
import 'package:la_vie/modules/create_new_post_screen/create_new_post.dart';
import 'package:la_vie/modules/home/cubit/states_home.dart';
import 'package:la_vie/modules/home/home_screen.dart';
import 'package:la_vie/modules/notification_screen/notification.dart';
import 'package:la_vie/modules/profile_screen/profile.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInitialSatets());

  static HomeCubit get(context) => BlocProvider.of(context);
  int currentIndex = 2;
  int currentContainer = 0;
  int counter = 1;
  int price = 7;
  List <Widget> screen =
  [
    Blogs(),
    CreatePost(),
    HomeScreen(),
    Notifications(),
    Profile(),
  ];
  List<Map> MyCart=[];

  void chaneIndex(int index){
    currentIndex = index;
    emit(HomeChaneBottomNavBarSatets());
  }

  void changeContainer(int index){
    currentContainer = index;
    emit(HomeChaneContainerSatets());
  }

  void changeCounterMinus(){
    counter--;
    emit(HomeChaneCounterMinusSatets());
  }

  void changeCounterPlus(){
    counter++;
    emit(HomeChaneCounterPlusSatets());
  }

  void addMyCart({
  required Map Item,
}){
    MyCart.add(Item);
  }
}