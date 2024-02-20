import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/empty_widget/empty_widget.dart';
import '../../../../../widgets/error_widget/error_widget.dart';
import '../../../../../widgets/loading_list_item_widget/loading_list_item.dart';
import '../blocs/anime_girl_bloc.dart';
import '../widgets/anime_girl_done_widget.dart';

class AnimeGirlScreen extends StatefulWidget {
  const AnimeGirlScreen({super.key});

  @override
  State<AnimeGirlScreen> createState() => _AnimeGirlScreenState();
}

class _AnimeGirlScreenState extends State<AnimeGirlScreen> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: getIt<AnimeGirlBloc>()..add(OnGetAnimeGirlCharacter()),
      child: Builder(builder: (context) {
        return BlocBuilder<AnimeGirlBloc, AnimeGirlState>(
          builder: (_, state) {
            late Widget widgetShow;
            if (state is AnimeGirlDone) {
              final character = state.characters ?? [];
              if (character.isEmpty) {
                widgetShow = const AppEmptyWidget();
              } else {
                widgetShow = AnimeGirlDoneWidget(characterModel: character);
              }
            } else if (state is AnimeGirlError) {
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
