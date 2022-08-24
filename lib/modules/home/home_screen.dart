import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/home/cubit/cubit_home.dart';
import 'package:la_vie/modules/home/cubit/states_home.dart';
import 'package:la_vie/modules/my_cart_screen/my_cart.dart';
import 'package:la_vie/modules/search_screen/search_plants.dart';
import 'package:la_vie/shared/components/components.dart';
import 'package:la_vie/shared/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, Object? state) {
        HomeCubit cubit = HomeCubit.get(context);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    top: 55,
                  ),
                  child: Center(
                    child: logoLaVie(
                      fontSize: 27,
                      left: 48,
                      top: 20,
                      width: 23,
                      height: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: (){
                            navigateto(context, SearchPlants());
                          },
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                              color: Color(0xffF8F8F8),
                            ),
                            padding: EdgeInsetsDirectional.only(
                              top: 5,
                              bottom: 5,
                              start: 30,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  'Search',
                                  style: defaultStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 15,
                      ),
                      child: InkWell(
                        onTap: (){
                          navigateto(context, MyCart());
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: defaultColor,
                          ),
                          child: Image.asset(
                            'assets/images/Cart.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: (){
                              cubit.changeContainer(0);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: cubit.currentContainer == 0 ? Colors.white : Color(0xffF8F8F8) ,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                  spreadRadius: cubit.currentContainer == 0 ?  0.5 : 0.0,
                                  color: defaultColor ,
                                ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 10,
                                  bottom: 10,
                                  start: 20,
                                  end: 20,
                                ),
                                child: Text(
                                  'All',
                                  style: TextStyle(
                                    color: cubit.currentContainer == 0 ? defaultColor : Colors.grey ,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: (){
                              cubit.changeContainer(1);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: cubit.currentContainer == 1 ? Colors.white : Color(0xffF8F8F8) ,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                  spreadRadius: cubit.currentContainer ==  1?  0.5 : 0.0,
                                  color: defaultColor ,
                                ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 10,
                                  bottom: 10,
                                  start: 20,
                                  end: 20,
                                ),
                                child: Text(
                                  'Plants',
                                  style: TextStyle(
                                    color: cubit.currentContainer == 1 ? defaultColor : Colors.grey ,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: (){
                              cubit.changeContainer(2);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: cubit.currentContainer == 2 ? Colors.white : Color(0xffF8F8F8) ,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                  spreadRadius: cubit.currentContainer == 2 ?  0.5 : 0.0,
                                  color: defaultColor ,
                                ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 10,
                                  bottom: 10,
                                  start: 20,
                                  end: 20,
                                ),
                                child: Text(
                                  'Seeds',
                                  style: TextStyle(
                                    color: cubit.currentContainer == 2 ? defaultColor : Colors.grey ,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: (){
                              cubit.changeContainer(3);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: cubit.currentContainer == 3 ? Colors.white : Color(0xffF8F8F8) ,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [BoxShadow(
                                  spreadRadius: cubit.currentContainer == 3 ?  0.5 : 0.0,
                                  color: defaultColor ,
                                ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  top: 10,
                                  bottom: 10,
                                  start: 20,
                                  end: 20,
                                ),
                                child: Text(
                                  'Products',
                                  style: TextStyle(
                                    color: cubit.currentContainer == 3 ? defaultColor : Colors.grey ,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 10,
                    end: 10,
                  ),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => buildRowCart(
                          function: (){
                            cubit.addMyCart(
                                Item: {
                                  'name' : 'GARDENIA PLANT',
                                  'price' : cubit.price,
                                  'counter' : cubit.counter,
                                  'image' : 'assets/images/pp1.png',
                                }
                            );
                          },
                          Minus: (){cubit.changeCounterMinus();},
                          Plus: (){cubit.changeCounterPlus();},
                          price: cubit.price,
                          counter: cubit.counter
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        height: 0,
                      ),
                      itemCount: 20
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
