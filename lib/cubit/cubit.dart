import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training_test/cubit/states.dart';

class PointsSystemCubit extends Cubit<PointsSystemState> {
  PointsSystemCubit() : super(InitialState());
  int teamApionts = 0;
  int teamBpionts = 0;
  void addPoints({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamApionts += buttonNumber;
      emit(AddPointsAState());
    } else {
      teamBpionts += buttonNumber;
      emit(AddPointBsAState());
    }
  }

  void ResetPoinst() {
    teamApionts = 0;
    teamBpionts = 0;
    emit(RestPiontsState());
  }
}
