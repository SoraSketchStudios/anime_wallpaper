import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:frame_project/presentation/home/blocs/home/home_bloc.dart';
import 'package:widget/loading/loading_widget.dart';

class HomeLoadingWidget extends StatelessWidget {
  const HomeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: RefreshIndicator(
            onRefresh: () async {
              getIt<HomeBloc>().add(OnReloadHome());
            },
            child: const SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
            ),
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          bottom: 0,
          right: 0,
          child: Center(
            child: AppLoadingWidget(),
          ),
        ),
      ],
    );
  }
}
