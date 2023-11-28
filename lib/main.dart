// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

import 'package:flutter_training_test/helpers/app_router.dart';

void main() {
  runApp(CharctersApp(
    appRouter: AppRouter(),
  ));
}

class CharctersApp extends StatelessWidget {
  const CharctersApp({
    Key? key,
    required this.appRouter,
  }) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoutes,
    );
  }
}
