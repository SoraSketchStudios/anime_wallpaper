extension TimeString on DateTime {
  String get ddmmyyyHHmm {
    return "${convertNumberTime(day)}/${convertNumberTime(month)}/$year ${convertNumberTime(hour)}:${convertNumberTime(minute)}";
  }
}

String convertNumberTime(int time) {
  return time > 9 ? "$time" : "0$time";
}
