import 'package:flutter/material.dart';

abstract final class ThemePalette {
  static const Color transparent = Colors.transparent;

  //White
  static const Color white100 = Colors.white;
  static const Color white88 = Color(0xE1FFFFFF);
  static const Color white68 = Color(0XADFFFFFF);
  static const Color white40 = Color(0x5CFFFFFF);
  static const Color white14 = Color(0X24FFFFFF);
  static const Color white10 = Color(0X1AFFFFFF);
  static const Color white4 = Color(0X0AFFFFFF);

  //Dark
  static const Color dark100 = Color(0XFF0B0B0B);
  static const Color dark88 = Color(0XFF292929);
  static const Color dark68 = Color(0XFF595959);
  static const Color dark40 = Color(0XFF8F8F8F);
  static const Color dark14 = Color(0XFFDCDCDC);
  static const Color dark10 = Color(0XFFE7E7E7);
  static const Color dark4 = Color(0XFFF5F5F5);

  //Primary (Accent)
  static const Color accent100 = Color(0XFF4BA2FF);
  static const Color accent88 = Color(0XFF61AEFF);
  static const Color accent68 = Color(0XFF85C0FF);
  static const Color accent40 = Color(0XFFBEDDFF);
  static const Color accent20 = Color(0XFFD7EBFF);
  static const Color accent12 = Color(0XFFE9F3FF);
  static const Color accent6 = Color(0XFFF4FAFF);
  static const Color accentExtra200 = Color(0XFF3893F5);
  static const Color accentExtra300 = Color(0XFF197EE9);

  //Secondary (Accent-S)
  static const Color accentS100 = Color(0XFFAA69FF);
  static const Color accentS88 = Color(0XFFB57BFF);
  static const Color accentS68 = Color(0XFFC699FF);
  static const Color accentS40 = Color(0XFFE0C9FF);
  static const Color accentS20 = Color(0XFFECDDFF);
  static const Color accentS12 = Color(0XFFF7F0FF);
  static const Color accentS6 = Color(0XFFFAF6FF);
  static const Color accentSExtra200 = Color(0XFF9048EF);
  static const Color accentSExtra300 = Color(0XFF7C2AE7);

  //Critical
  static const Color critical100 = Color(0XFFD92D20);
  static const Color critical88 = Color(0XFFDE473B);
  static const Color critical68 = Color(0XFFE67168);
  static const Color critical40 = Color(0XFFF1B3AF);
  static const Color critical20 = Color(0XFFF8D9D7);
  static const Color critical12 = Color(0XFFFAE5E4);
  static const Color critical6 = Color(0XFFFDF3F2);
  static const Color criticalExtra200 = Color(0XFFB32318);
  static const Color criticalExtra300 = Color(0XFF9E231A);

  //Caution
  static const Color caution100 = Color(0XFFFF8B00);
  static const Color caution88 = Color(0XE0FF8B00);
  static const Color caution68 = Color(0XADFF8B00);
  static const Color caution40 = Color(0X5CFF8B00);
  static const Color caution20 = Color(0XFFFFE8CC);
  static const Color caution12 = Color(0XFFFFF1E0);
  static const Color caution6 = Color(0XFFFFF8F0);
  static const Color cautionExtra200 = Color(0XFFE87E00);
  static const Color cautionExtra300 = Color(0XFFB54708);

  //Success
  static const Color success100 = Color(0XFF05B365);
  static const Color success88 = Color(0XFF23BD78);
  static const Color success68 = Color(0XFF55CC97);
  static const Color success40 = Color(0XFFA5E3C7);
  static const Color success20 = Color(0XFFCDF0E0);
  static const Color success12 = Color(0XFFE1F5EC);
  static const Color success6 = Color(0XFFF0FBF6);
  static const Color successExtra200 = Color(0XFF06985C);
  static const Color successExtra300 = Color(0XFF066F43);
}
