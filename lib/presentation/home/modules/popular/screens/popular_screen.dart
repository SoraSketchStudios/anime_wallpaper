import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/empty_widget/empty_widget.dart';
import '../../../../../widgets/error_widget/error_widget.dart';
import '../../../../../widgets/loading_list_item_widget/loading_list_item.dart';
import '../blocs/popular_bloc.dart';
import '../widgets/popular_done_widget.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<PopularBloc>()..add(OnGetPopularCharacter()),
      child: Builder(builder: (context) {
        return BlocBuilder<PopularBloc, PopularState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is PopularDone) {
              final character = state.characters ?? [];
              if (character.isEmpty) {
                widgetShow = const AppEmptyWidget();
              } else {
                widgetShow = PopularDoneWidget(characterModels: state.characters ?? []);
              }
            } else if (state is PopularError) {
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
