import 'package:flutter_training_test/data/model/character.dart';

abstract class CharactersState {}

class InitialState extends CharactersState {}

class LoadedCharactersState extends CharactersState {
  final List<Character> character;

  LoadedCharactersState({required this.character});
}

