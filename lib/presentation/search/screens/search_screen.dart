import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frame_project/presentation/search/blocs/search_bloc.dart';
import 'package:frame_project/presentation/search/widgets/search_done_widget.dart';
import 'package:frame_project/presentation/search/widgets/search_error_widget.dart';
import 'package:frame_project/presentation/search/widgets/search_initial_widget.dart';
import 'package:frame_project/presentation/search/widgets/search_loading_widget.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        focusNode.requestFocus();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white.withOpacity(0.5), // Adjust opacity as needed
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: Colors.transparent,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5.7.w,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        AppPathAsset.iconBack,
                        width: 6.04.w,
                      )),
                  SizedBox(
                    width: 2.98.w,
                  ),
                  Expanded(
                    child: Hero(
                      tag: "search",
                      child: AppTextFieldWidget(
                        controller: _controller,
                        onDone: () {

                          getIt<SearchBloc>().add(OnSearch(_controller.text));
                          // Navigator.pop(context);
                        },
                        focusNode: focusNode,
                        enabled: true,
                        onChange: (string) {},
                        hintText: "Find Wallpaper by character name..",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.7.w,
                  ),
                ],
              ),
              SizedBox(
                height: 4.1.w,
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (_, state) {
                  if (state is SearchLoading) {
                    return const SearchLoadingWidget();
                  } else if (state is SearchDone) {
                    return SearchDoneWidget(imageModels: state.imageModels);
                  } else if (state is SearchInitial) {
                    return const SearchInitialWidget();
                  } else {
                    return const SearchErrorWidget();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
