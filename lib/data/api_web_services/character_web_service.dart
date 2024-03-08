import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myproject/constants/strings.dart';
//api
class CharactersWebServices{ //class
  late Dio dio;
  CharactersWebServices (){           //construct of 
    BaseOptions options = BaseOptions(     //objective
      baseUrl:baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout:Duration(minutes: 1),    //duration is oneofdata type
      receiveTimeout:Duration(minutes: 1),//20 seconds
      );
      dio =Dio(options);//pass ofoptions here
  }
  Future<List<dynamic>> getAllCharacters() async{
try{
  Response response =await dio.get('characters');
  print(response.data.toString());  //to string to i can see it
  return response.data;
}catch(e){
  print(e.toString());
  return[];     //رجع لي فراغ
}
  }
}