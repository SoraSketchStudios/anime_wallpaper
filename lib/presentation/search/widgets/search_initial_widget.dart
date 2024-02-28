import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

import '../../categories/widgets/category_widgets/category_widget.dart';

class SearchInitialWidget extends StatelessWidget {
  const SearchInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 9.4.w,
        ),
        SizedBox(
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.64.w),
                child: Text(
                  "Browse By Category",
                  style: context.textTheme.titleLarge
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              CategoryWidget(),
            ],
          ),
        )
      ],
    );
  }
}
