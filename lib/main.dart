import 'package:dependency/presentation/home/home_screen.dart';
import 'package:dependency/services/api_service/api_repository.dart';
import 'package:dependency/services/api_service/classic_api.dart';
import 'package:dependency/services/dependency_injection/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/home/bloc/home_bloc.dart';

void main() {
  // Inject Dependencies using GET.it
  setupDepedencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(getIt<ApiReposiotry>()),
        child: HomeScreen(),
      ),
    );
  }
}
