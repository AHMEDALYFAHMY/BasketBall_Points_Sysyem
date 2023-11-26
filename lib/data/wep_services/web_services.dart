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
      Response response = await dio.get('characters');
      debugPrint(response.data.toString());
      
      // print(response.data.toString());
      return response.data;
    } catch (e) {
       debugPrint(e.toString());
      // print(e.toString());
      return [];
    }
    
  }

  //  Future<List<dynamic>> getCharacterQuotes(String charName) async {
  //   try {
  //     Response response = await dio.get('quote' , queryParameters: {'author' : charName});
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (e) {
  //     print(e.toString());
  //     return [];
  //   }
  // }



}