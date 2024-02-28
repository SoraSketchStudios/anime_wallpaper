import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/widgets/error_widget/error_widget.dart';
import 'package:frame_project/widgets/loading_list_item_widget/loading_list_item.dart';

import '../blocs/trending_bloc.dart';
import '../widgets/trending_done_widget.dart';
import '../widgets/trending_empty_widget.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<TrendingBloc>()..add(OnGetTrendingImage()),
      child: Builder(builder: (context) {
        return BlocBuilder<TrendingBloc, TrendingState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is TrendingDone) {
              final character = state.images ?? [];
              if (character.isEmpty) {
                widgetShow = const TrendingEmptyWidget();
              } else {
                widgetShow = TrendingDoneWidget(imageModels: state.images ?? []);
              }
            } else if (state is TrendingError) {
              widgetShow = const AppErrorWidget();
            } else {
              widgetShow = const AppLoadingListItem();
            }
            return widgetShow;
          },
        );
      }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
