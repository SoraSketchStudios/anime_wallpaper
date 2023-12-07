
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/theme.dart';
import 'package:voca_memo/core/blocs/times/times_bloc.dart';
import 'package:voca_memo/presentation/home/blocs/home_bloc.dart';
import 'package:voca_memo/routes/route_names.dart';
import 'package:widget/widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<AppTextFieldWidgetState> keyInput =
      GlobalKey<AppTextFieldWidgetState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff1B3351).withOpacity(0.3),
            const Color(0xff9B6195).withOpacity(0.3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: PopScope(
        canPop: false,
        onPopInvoked: (check) {
          if (!check) {
            SystemNavigator.pop();
          }
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: buildAppBar(context),
          body: GestureDetector(
            onTap: () {
              keyInput.currentState?.focusNode.unfocus();
            },
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(AppSize.padding),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // const HomeCountTimesWidget(),
                          const AppSpaceHeightWidget(),
                          AppTextFieldWidget(
                            key: keyInput,
                          ),
                          AppSpaceHeightWidget.L(),
                          buildButtonAdd(context),
                        ],
                      ),
                    ),
                    const Expanded(flex: 4, child: SizedBox())
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButtonAdd(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 3 / 2,
      child: AppButtonWidget(
        onPressed: () async {
          if (keyInput.currentState?.controller.text.toLowerCase().trim() !=
              "") {
            keyInput.currentState?.focusNode.unfocus();
            await Future.delayed(const Duration(milliseconds: 300));
            getIt<HomeBloc>().add(OnAddWord(
                keyInput.currentState?.controller.text.trim().toLowerCase() ??
                    "",
                context, () {
              keyInput.currentState?.controller.clear();
            }));
          }
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppSpaceHeightWidget.XS(),
            Text(
              "Add the Word",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text("${context.watch<TimesBloc>().state.times}/50"),
            AppSpaceHeightWidget.XS(),
          ],
        ),
      ),
    );
  }

  Expanded buildTimesDay(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(AppSize.padding * 3),
            decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                border: Border.all(width: 5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  "${context.watch<TimesBloc>().state.times}/50",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Text(
                  "Day",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, RouteName.userScreen);
          },
          icon: const Icon(
            Icons.person,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteName.wordsScreen);
            },
            icon: const Icon(Icons.area_chart))
      ],
    );
  }
}
