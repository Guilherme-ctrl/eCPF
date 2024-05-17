import 'package:intl/intl.dart';

class DateConverter {
  String convertDateTimeToString(DateTime dateTime) {
    // Create a formatter using the Brazilian date format (dd/MM/yyyy)
    final formatter = DateFormat('dd/MM/yyyy');

    // Format the DateTime object using the formatter
    final formattedString = formatter.format(dateTime);

    return formattedString;
  }
}
