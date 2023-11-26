import 'package:flutter/material.dart';
import 'package:flutter_training_test/helpers/constants/string_manger.dart';
import 'package:flutter_training_test/presentaion/screens/characters_details_screen.dart';
import 'package:flutter_training_test/presentaion/screens/characters_screen.dart';

class AppRouter {
  Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
         case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharactersDetailsScreen());
    }
    return null;
  }
}
