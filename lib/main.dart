// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training_test/cubit/cubit.dart';
import 'package:flutter_training_test/cubit/states.dart';

void main() {
  runApp(BasketballPointsSys());
}

class BasketballPointsSys extends StatelessWidget {
  const BasketballPointsSys({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PointsSystemCubit(),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
      );
  }
}
 
class Home extends StatelessWidget {
  Home({super.key});
  int teamApoints = 0;
  int teambpoints = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PointsSystemCubit, PointsSystemState>(
      listener: (context, state) {
        if (state is AddPointsAState) {
          teamApoints = BlocProvider.of<PointsSystemCubit>(context).teamApionts;
        } else {
          teambpoints = BlocProvider.of<PointsSystemCubit>(context).teamBpionts;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('PointsCounter APP'),
          ),
          //floatingActionButton: FloatingActionButton(onPressed: (){}),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<PointsSystemCubit>(context).teamApionts}',
                          style: TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 1, team: 'A');
                          },
                          color: Colors.orange,
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 2, team: 'A');
                          },
                          color: Colors.orange,
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          minWidth: 70,
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 3, team: 'A');
                          },
                          color: Colors.orange,
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<PointsSystemCubit>(context).teamBpionts}',
                          style: TextStyle(
                            fontSize: 120,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 1, team: 'B');
                          },
                          color: Colors.orange,
                          child: Text('Add 1 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 2, team: 'B');
                          },
                          color: Colors.orange,
                          child: Text('Add 2 Point'),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<PointsSystemCubit>(context)
                                .addPoints(buttonNumber: 3, team: 'B');
                          },
                          color: Colors.orange,
                          child: Text('Add 3 Point'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                  onPressed: () {
                    BlocProvider.of<PointsSystemCubit>(context).ResetPoinst();
                  },
                  color: Colors.orange,
                  child: Text('Reset'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
