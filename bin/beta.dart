 
import 'package:general_universe/utils/sheet/spreadsheet.dart';

void main(List<String> args) {
  // print(getRangeNotation(2996, 1, 5, 1));
  print(
    SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: 4,
      totalLength: 2996,
    ),
  );
}
