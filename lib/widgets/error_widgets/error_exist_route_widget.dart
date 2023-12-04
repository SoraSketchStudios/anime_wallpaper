import 'package:flutter/material.dart';

class AppErrorExistRouteWidget extends StatelessWidget {
  final String name;
  const AppErrorExistRouteWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$name is not exists",
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
