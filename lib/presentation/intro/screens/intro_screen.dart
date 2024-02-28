import 'package:flutter/material.dart';
import 'package:frame_project/presentation/intro/widgets/intro_widgets/intro_1_widget.dart';
import 'package:frame_project/presentation/intro/widgets/intro_widgets/intro_2_widget.dart';
import 'package:frame_project/presentation/intro/widgets/intro_widgets/intro_3_widget.dart';
import 'package:frame_project/presentation/intro/widgets/intro_widgets/intro_4_widget.dart';
import 'package:theme/theme.dart';

import '../widgets/intro_widgets/intro_control_tab_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with TickerProviderStateMixin {
  late final TabController controller;
  ValueNotifier currentIndex = ValueNotifier(0);
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.animateTo(0);
      // controller.addListener(() {
      //   if (!controller.indexIsChanging) currentIndex.value = controller.index;
      // });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    Intro1Widget(),
                    Intro2Widget(),
                    Intro3Widget(),
                    Intro4Widget(),
                  ]),
            ),
            SizedBox(
              height: 5.h,
            ),
            AnimatedBuilder(
                animation: currentIndex,
                builder: (__, _) {
                  return IntroControlTabWidget(
                    indexSelect: currentIndex.value,
                    onCallBack: () {
                      controller.animateTo(currentIndex.value + 1);
                      currentIndex.value++;
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
