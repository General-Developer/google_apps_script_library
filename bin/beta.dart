import 'package:general_universe/utils/sheet/spreadsheet.dart';

void main(List<String> args) {
  // print(getRangeNotation(2996, 1, 5, 1));
  print(
    SpreadsheetGeneralUniverseUtils.createRange(
      startColumn: 1,
      endRow: 10,
      totalLength: 2996,
    ),
  );

  int totalRowLength = 10;
  final String sheetRange = SpreadsheetGeneralUniverseUtils.createRange(
    startColumn: 1,
    endRow: totalRowLength,
    totalLength: 2,
  );
  final List<String?> values = [
    DateTime.now().toString(),
    null,
    "swldwp",
    "felfo",
  ];

  final datas =<List<String?>>[
    if (values.length == totalRowLength) ...[
      values,
    ] else if (values.length > totalRowLength) ...[
      values.take(totalRowLength).toList(),
    ] else ...[
      List.generate(totalRowLength, (index) {
        if (values.length > index) {
          print("use old");
          return values[index];
        }
        return null;
      }),
    ],
  ];
}
