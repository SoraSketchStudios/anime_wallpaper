import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/empty_widget/empty_widget.dart';
import '../../../../../widgets/error_widget/error_widget.dart';
import '../../../../../widgets/loading_list_item_widget/loading_list_item.dart';
import '../blocs/new_bloc.dart';
import '../widgets/new_done_widget.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<NewBloc>()..add(OnGetNewImage()),
      child: Builder(builder: (context) {
        return BlocBuilder<NewBloc, NewState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is NewDone) {
              final character = state.characters ?? [];
              if (character.isEmpty) {
                widgetShow = const AppEmptyWidget();
              } else {
                widgetShow = NewDoneWidget(characterModels: state.characters ?? []);
              }
            } else if (state is NewError) {
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
