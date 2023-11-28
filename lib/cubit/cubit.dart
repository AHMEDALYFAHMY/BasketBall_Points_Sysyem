import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training_test/cubit/states.dart';
import 'package:flutter_training_test/data/model/character.dart';
import 'package:flutter_training_test/data/repo/characters_repository.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
   List<Character> charaters=[];

  CharactersCubit(this.charactersRepo) : super(InitialState());

  List<Character> getAllCharactersList() {
    charactersRepo.getAllCharacters().then((charaters) {
      emit(LoadedCharactersState(character: charaters));
      this.charaters = charaters;
    });
    return charaters;
  }
}
