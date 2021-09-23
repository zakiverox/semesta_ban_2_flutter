part of 'shared.dart';

const double defaultMargin = 24;

Color maincolor = Color(0xFFFAA21A);
Color accentcolor1 = Color(0xFFEF4923);
Color accentcolor2 = Color(0xFFF0F0F0);

TextStyle blackTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle orangeTextFont = GoogleFonts.raleway()
    .copyWith(color: maincolor, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.raleway()
    .copyWith(color: Colors.grey, fontWeight: FontWeight.w500);
TextStyle whiteNumberFont = GoogleFonts.openSans()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle greyNumberFont = GoogleFonts.openSans()
    .copyWith(color: accentcolor2, fontWeight: FontWeight.w500);
TextStyle orangeNumberFont = GoogleFonts.openSans()
    .copyWith(color: maincolor, fontWeight: FontWeight.w500);
