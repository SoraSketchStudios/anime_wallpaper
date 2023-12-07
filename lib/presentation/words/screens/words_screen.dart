import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widget/widget.dart';
import 'package:theme/theme.dart';

import '../blocs/words/words_bloc.dart';

class WordsScreen extends StatefulWidget {
  const WordsScreen({super.key});

  @override
  State<WordsScreen> createState() => _WordsScreenState();
}

class _WordsScreenState extends State<WordsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<WordsBloc, WordsState>(
        builder: (context, state) {
          if (state is WordsLoading) {
            return const AppLoadingWidget();
          } else if (state is WordsDone) {
            return SingleChildScrollView(
              child: Column(
                children: (state.listWord ?? [])
                    .map((e) => GestureDetector(
                          onTap: () {
                            context
                                .read<WordsBloc>()
                                .add(OnTapItemWord(context, e));
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(AppSize.padding),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(e.word ?? ""),
                                  Text("${e.count} times")
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
