import 'package:inno_tech/export.dart';

TextStyle textStyleBoldBlack(double size) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: size,
        letterSpacing: 0.5,
        color: CupertinoColors.black,
        fontWeight: FontWeight.bold),
  );
}
