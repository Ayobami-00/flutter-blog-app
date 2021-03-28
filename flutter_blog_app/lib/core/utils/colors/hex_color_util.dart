import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    String _ = hexColor.toUpperCase();
    // ignore: parameter_assignments
    hexColor = _.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}