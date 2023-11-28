import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training_test/cubit/cubit.dart';
import 'package:flutter_training_test/data/repo/characters_repository.dart';
import 'package:flutter_training_test/data/wep_services/web_services.dart';
import 'package:flutter_training_test/helpers/constants/string_manger.dart';
import 'package:flutter_training_test/presentaion/screens/characters_details_screen.dart';
import 'package:flutter_training_test/presentaion/screens/characters_screen.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepo =
        CharactersRepo(charactersWebServices: CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
  }
  Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());
    }
    return null;
  }
}
