import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_test/helpers/constants/string_manger.dart';


class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout:const Duration(seconds: 5), // 60 seconds,
      receiveTimeout: const Duration(seconds: 5),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      debugPrint(response.data.toString());
      
     
      return response.data;
    } catch (e) {
       debugPrint(e.toString());
      
      return [];
    }
    
  }
  

 


}