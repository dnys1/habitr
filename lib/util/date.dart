import 'package:date_format/date_format.dart';

String prettyDate(DateTime dateTime) {
  return formatDate(dateTime, [mm, '/', dd, '/', yyyy]);
}
