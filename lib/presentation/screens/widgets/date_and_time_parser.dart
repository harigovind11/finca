import 'package:intl/intl.dart';

String parseTime(DateTime time) {
  final _time = DateFormat.Hm().format(time);

  return _time;
}

String parseDateYMMMD(DateTime date) {
  final _date = DateFormat.yMMMd().format(date);
  return _date;
}

String parseDateMMMD(DateTime date) {
  final _date = DateFormat.MMMd().format(date);
  final _splitedDate = _date.split(' ');
  return '${_splitedDate.last}\t${_splitedDate.first}';
  // return '${date.day}\t${date.month}';
}
