import 'package:intl/intl.dart';

class HumanFormats {
  /* static String bytes(int bytes) {
    if (bytes <= 0) return '0 B';
    const List<String> suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    final int i = (bytes / 1024).floor();
    if (i == 0) return '$bytes B';
    double result = bytes;
    for (int j = 0; j < i; j++) {
      result = result / 1024;
    }
    return '${result.toStringAsFixed(2)} ${suffixes[i]}';
  }

  static String duration(int seconds) {
    if (seconds <= 0) return '0s';
    final int hours = (seconds / 3600).floor();
    final int minutes = ((seconds % 3600) / 60).floor();
    final int remainingSeconds = seconds % 60;
    final List<String> parts = [];
    if (hours > 0) parts.add('$hours h');
    if (minutes > 0) parts.add('$minutes m');
    if (remainingSeconds > 0) parts.add('$remainingSeconds s');
    return parts.join(' ');
  } */

 static String humanReadbleNumber(double number){
  final formatterNumbers = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol:'',
  ).format(number);

  return formatterNumbers;
 }
  
}