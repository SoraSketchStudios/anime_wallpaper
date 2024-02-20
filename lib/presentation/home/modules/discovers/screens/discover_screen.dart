import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/widgets/error_widget/error_widget.dart';
import 'package:frame_project/widgets/loading_list_item_widget/loading_list_item.dart';

import '../blocs/discover_bloc.dart';
import '../widgets/discover_done_widget.dart';
import '../widgets/discover_empty_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<DiscoverBloc>()..add(OnGetDiscoverCharacter()),
      child: Builder(builder: (context) {
        return BlocBuilder<DiscoverBloc, DiscoverState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is DiscoverDone) {
              final character = state.characters ?? [];
              if (character.isEmpty) {
                widgetShow = const DiscoverEmptyWidget();
              } else {
                widgetShow = DiscoverDoneWidget(characterModels: state.characters ?? []);
              }
            } else if (state is DiscoverError) {
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
