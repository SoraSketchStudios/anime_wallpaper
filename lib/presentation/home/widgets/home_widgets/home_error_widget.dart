import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';

class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        getIt<HomeBloc>().add(OnReloadHome());
      },
      child: const SingleChildScrollView(
        child: Center(
          child: Text("Error"),
        ),
      ),
    );
  }
}
