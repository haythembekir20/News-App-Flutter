// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/layout/cubit/states.dart';
import 'package:newsapp/modules/Settings_screen.dart';
import 'package:newsapp/modules/science_screen.dart';
import 'package:newsapp/modules/sport_screen.dart';
import 'package:newsapp/modules/Business_screen.dart';
import 'package:newsapp/shared/network/dio_helper.dart';

class NewsCubit extends Cubit<NewStates>
{
  NewsCubit():super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> BottomItems=[
    BottomNavigationBarItem(
      icon: 
      Icon(
        Icons.business,
        ),
        label: 'Business',
      ),
      BottomNavigationBarItem(
      icon: 
      Icon(
        Icons.sports,
        ),
        label: 'Sports',
      ),
      BottomNavigationBarItem(
      icon: 
      Icon(
        Icons.science,
        ),
        label: 'Science',
      ),
        BottomNavigationBarItem(
      icon: 
      Icon(
        Icons.settings,
        ),
        label: 'Settings',
      ),

  ];
  
  List<Widget> screens = [
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    SettingsScreen(),

  ];
void changeBottomNavBar(int index){
  currentIndex = index;
  emit(NewsBottomNavState());

}


List <dynamic> Business =[];
 void getBusiness()
  {
    emit(NewsLoadingState());

    dio_helper.getData(
      url: 'v2/top-headlines',
      query:
      {
        'country':'eg',
        'category':'business',
        'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      },
    ).then((value)
    {
      print(value.data['articles'][0]['title']);
      Business = value.data['articles'];
      print(Business[0]['title']);

      emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      //print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    });
  }
}