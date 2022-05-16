// ignore_for_file: prefer_const_constructors

import 'package:cubit_state_management/cubit/app_cubit.dart';
import 'package:cubit_state_management/cubit/app_cubit_logic.dart';
import 'package:cubit_state_management/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cubit State Management ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(data: DataServices()),
        child: AppCubitLogic(),
      ),
    );
  }
}
