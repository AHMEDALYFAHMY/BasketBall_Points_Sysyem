import 'package:flutter_training_test/data/model/character.dart';
import 'package:flutter_training_test/data/wep_services/web_services.dart';

class CharactersRepo {
  final CharactersWebServices charactersWebServices;

  CharactersRepo({required this.charactersWebServices});
  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map<Character>((chara) => Character.fromJson(chara)).toList();
  }
}
