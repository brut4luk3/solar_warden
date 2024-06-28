import 'package:intl/intl.dart';

String convertDateToBrazilianTimezone(String dateStr) {
  DateTime date = DateTime.parse(dateStr).toLocal();
  return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
}

bool isCurrentTimeWithin(DateTime beginTime, DateTime endTime) {
  final now = DateTime.now();
  return now.isAfter(beginTime) && now.isBefore(endTime);
}