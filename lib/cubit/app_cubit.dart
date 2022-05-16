// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, empty_catches

import 'package:bloc/bloc.dart';
import 'package:cubit_state_management/model/data_model.dart';
import 'package:cubit_state_management/services/data_services.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  late final places;
  final DataServices data;
  AppCubit({required this.data}) : super(AppInitial()) {
    emit(WelcomeState());
  }

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  DetailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
