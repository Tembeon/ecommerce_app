import 'dart:ui';

extension HexParsing on String {
  /// Parses given string hex color to [Color] class.
  Color fromHex() {
    assert(isNotEmpty, 'Color cannot be empty');
    // save value to mutable variable
    String hexColor = this;

    // remove hashtag
    if (hexColor.contains('#')) hexColor = hexColor.replaceAll('#', '');
    // color with opacity, return color with 100% opacity
    if (hexColor.length == 6) return Color(int.parse('0xFF$hexColor'));
    // color without opacity, return color with given opacity
    if (hexColor.length == 8) return Color(int.parse('0X$hexColor'));

    // given color is not matching all cases above, drop error
    throw UnimplementedError('Given color cannot be parsed: $hexColor');
  }
}
