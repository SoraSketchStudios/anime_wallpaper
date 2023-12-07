import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

import '../../../core/blocs/times/times_bloc.dart';

class HomeCountTimesWidget extends StatelessWidget {
  const HomeCountTimesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Align(
          alignment: Alignment.center,
          child: CustomButton(),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          padding: EdgeInsets.all(AppSize.padding * 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1),
            gradient: RadialGradient(
              colors: [
                Color(0xffF69CA5),
                Color(0xffEA71C5),
              ],
              center: Alignment.centerRight,
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: const GradientBoxBorder(
                width: 5,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffEA71C5),
                    Color(0xffF69CA5),
                  ],
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 30),
                  blurRadius: 30,
                  color: Color(0x00000099),
                ),
                BoxShadow(
                  blurRadius: 5,
                  color: Color(0xACC8FF),
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                ),
                BoxShadow(
                  blurRadius: 8,
                  color: Color(0x758FB6),
                  spreadRadius: -1,
                  offset: Offset(0, -1),
                ),
              ],
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                stops: [0.3361, 0.8919],
                colors: [
                  Color(0x80FFFFFF).withOpacity(0.2),
                  Color(0xEAC7D6FE).withOpacity(0.1),
                ],
              ),
              backgroundBlendMode: BlendMode.overlay,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  "${context.watch<TimesBloc>().state.times}/50",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  maxLines: 1,
                ),
                // const Divider(
                //   color: Colors.black,
                // ),
                // Text(
                //   "Day",
                //   style: Theme.of(context).textTheme.titleLarge?.copyWith(
                //         fontWeight: FontWeight.bold,
                //       ),
                // )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
