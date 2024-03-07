import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myproject/constants/strings.dart';
import 'package:myproject/presentation/screen/character_details.dart';
import 'package:myproject/presentation/screen/characters_screens.dart';

class AppRouter{//give the class any name
Route? generateRoute(RouteSettings settings){
  switch (settings.name) {
   case charactersScreen :  //this is first screen
      return MaterialPageRoute(builder:(_) => CharactersScreen(),);//لازم importلاي صصفحة بندها
  
   //for second screen:-
  case characterDetailsScreen:  //this is first screen
      return MaterialPageRoute(builder:(_) => CharacterDetailsScreen(),);
  }
}
}