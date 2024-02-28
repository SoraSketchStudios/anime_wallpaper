import 'package:flutter/material.dart';
import 'package:theme/image_export.dart';
import 'package:theme/theme.dart';
import '../widgets/category_widgets/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  final Function onCallback;
  const CategoriesScreen({super.key, required this.onCallback});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        onCallback.call();
      },
      child: Scaffold(
        appBar: AppBar(
          leading: Row(
            children: [
              SizedBox(
                width: 5.14.w,
              ),
              GestureDetector(
                onTap: () {
                  onCallback.call();
                },
                child: Image.asset(AppPathAsset.iconBack, width: 7.22.w, height: 7.22.w),
              ),
            ],
          ),
          title: Text(
            "Category",
            style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: CategoryWidget(),
      ),
    );
  }
}
