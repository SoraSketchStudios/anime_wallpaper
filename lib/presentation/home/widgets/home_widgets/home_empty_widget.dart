import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';

class HomeEmptyWidget extends StatelessWidget {
  const HomeEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RefreshIndicator(
          onRefresh: () async {
            getIt<HomeBloc>().add(OnReloadHome());
          },
          child: const SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: SizedBox(),
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Center(
            child: Text("character empty"),
          ),
        )
      ],
    );
  }
}
