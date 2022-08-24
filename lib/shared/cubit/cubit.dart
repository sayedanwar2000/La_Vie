

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/shared/cubit/states.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isBottomSheetShown = false;
  IconData fbIcon = Icons.edit;
  late Database database;
  List<Map> newData = [];
  List<Map> doneData = [];
  List<Map> archivedData = [];
  int currentIndex = 0;
  List <Widget> screen =
  [

  ];
  List <String> titles =
  [

  ];

void chaneIndex(int index){
  currentIndex = index;
  emit(AppChaneBottomNavBarState());
}

  void createDataBase()
  { openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database,vrsion){
        print('hi database');
        database.execute('CREATE TABLE Test (id INTEGER PRIMARY KEY, title TEXT, date TEXT , time TEXT , status TEXT)').then((value){
          print('table creayed');
        }).catchError((error){
          print('Error when createing table ${error.toString()}');
        });
      },
      onOpen: (database){
        getDataFromDataBase(database);
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
  });

  }

  insertToDataBase({
    required String title,
    required String date,
    required String time
  })async
  {
    await database.transaction((txn) async {
      txn.rawInsert
        (
          'INSERT INTO Test(title, date, time, status) VALUES("$title", "$date", "$time", "New")'
      ).then((value){
        print('$value insert is done');
        emit(AppInitialState());
        getDataFromDataBase(database);
      }).catchError((error){
        print('Error when inserting new record ${error.toString()}');
      });
    });
  }

  void updateData({
  required String Status,
  required int id,
})async
  {
   database.rawUpdate(
        'UPDATE Test SET status = ? WHERE id = ?',
        ['$Status', '$id'],
   ).then((value) {
     getDataFromDataBase(database);
     emit(AppUpdateDatabaseState());
   });
  }

  void deleteData({
    required int id,
  })async
  {
    database.rawDelete('DELETE FROM Test WHERE id = ?',
        [id]).then((value) {
      getDataFromDataBase(database);
      emit(AppDeleteDatabaseState());
    });
  }

  void getDataFromDataBase(database)async
  {
    newData = [];
    doneData = [];
    archivedData = [];

    emit(AppGetDatabaseLoadingState());

    database.rawQuery('SELECT * FROM Test').then((value) {

      value.forEach((element){
        if (element['status']=='New')
          newData.add(element);
        else if (element['status']=='Done')
          doneData.add(element);
        else
          archivedData.add(element);
      });
      emit(AppGetDatabaseState());
    });

  }

  void chaneBottomSheetState({
    required bool isShow,
    required IconData icon,
}){
    isBottomSheetShown = isShow;
    fbIcon = icon;
    emit(AppChaneBottomSheetState());
  }
}