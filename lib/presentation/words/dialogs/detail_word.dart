import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

void showDialogDetailWord(BuildContext context, List<HistoryWordModel> list) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(list.first.word ?? ""),
      content: Container(
        height: MediaQuery.of(context).size.height / 3 * 2,
        child: SingleChildScrollView(
          child: Column(
            children: list.map((e) => Text(e.time.toString())).toList(),
          ),
        ),
      ),
    ),
  );
}
