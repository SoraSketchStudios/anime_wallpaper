import 'package:flutter/material.dart';

void appShowBottomSheet({required BuildContext context, required Widget child}) {
  showModalBottomSheet(
    showDragHandle: true,
    context: context,
    builder: (_) => child,
  );
}
