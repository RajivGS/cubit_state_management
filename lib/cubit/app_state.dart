// ignore_for_file: prefer_const_constructors_in_immutables

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

class DetailState extends AppState {
  DetailState(this.place);
  final DataModel place;
  @override
  List<Object> get props => [place];
}
