import 'package:flutter_training_test/data/model/character.dart';
import 'package:flutter_training_test/data/wep_services/web_services.dart';

class CharactersRepo {
  final CharactersWebServices charactersWebServices;

  CharactersRepo({required this.charactersWebServices});
  Future<List<Character>> getAllCharacters() async {
    final char = await charactersWebServices.getAllCharacters(); 
    // mapper 
    return  char.map((char) => Character.fromJson(char)).toList();// output == list
  }
}
