import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/empty_widget/empty_widget.dart';
import '../../../../../widgets/error_widget/error_widget.dart';
import '../../../../../widgets/loading_list_item_widget/loading_list_item.dart';
import '../blocs/recent_bloc.dart';
import '../widgets/recent_done_widget.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<RecentBloc>()..add(OnGetRecentImage()),
      child: Builder(builder: (context) {
        return BlocBuilder<RecentBloc, RecentState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is RecentDone) {
              final character = state.characters ?? [];
              if (character.isEmpty) {
                widgetShow = const AppEmptyWidget();
              } else {
                widgetShow = RecentDoneWidget(characterModels: state.characters ?? []);
              }
            } else if (state is RecentError) {
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
