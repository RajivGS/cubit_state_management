part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object> get props => [];
}

class AppInitial extends AppState {}

class WelcomeState extends AppState {}

class LoadingState extends AppState {}

class LoadedState extends AppState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}
