import 'package:dependency/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Center(
                child: ElevatedButton(
                  child: Text(
                    "Get Data",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    BlocProvider.of<HomeBloc>(context).add(GetHomeData());
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
