import 'dart:ui';

extension HexParsing on String {
  /// Parses given string hex color to [Color] class.
  Color fromHex({bool alphaAtEnd = false}) {
    assert(isNotEmpty, 'Color cannot be empty');

    // save value to mutable variable
    String hex = this;

    // remove hashtag
    if (hex.contains('#')) hex = hex.replaceAll('#', '');

    assert(hex.length != 6 || hex.length != 8, 'Invalid color');

    // color can be AARRGGBB or RRGGBB, making all RRGGBB with alpha value
    if (hex.length == 6) hex = alphaAtEnd ? '${hex}FF' : 'FF$hex';

    return Color(int.parse('0x$hex'));
  }
}