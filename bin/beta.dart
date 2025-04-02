import "dart:math" as math;

String getColumnLetter(int columnNumber) {
  String columnLetter = "";
  while (columnNumber > 0) {
    int remainder = (columnNumber - 1) % 26;
    columnLetter = String.fromCharCode(65 + remainder) + columnLetter;
    columnNumber = (columnNumber - 1) ~/ 26;
  }
  return columnLetter;
}

String getRangeNotation(int startRow, int startCol, int endRow, int endCol) {
  String startColumnLetter = getColumnLetter(startCol);
  String endColumnLetter = getColumnLetter(endCol);
  return "$startColumnLetter$startRow:$endColumnLetter$endRow";
}

String getRange({
  required int start,
  required int end,
}) {
  return "${getColumnLetter(start)}${end}";
}

String createRange({
  required int startColumn,
  required int endRow,
  required int totalLength,
}) {
  final String startRange = getRange(
    start: startColumn,
    end: totalLength,
  );
  final String endRange = getRange(
    start: endRow,
    end: totalLength,
  );
  return "${startRange}:${endRange}";
}

void main(List<String> args) {
  // print(getRangeNotation(2996, 1, 5, 1));
  print(
    createRange(
      startColumn: 1,
      endRow: 4,
      totalLength: 2996,
    ),
  );
 
}
