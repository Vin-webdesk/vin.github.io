import 'package:flutter/material.dart';

import '../screens/about/about.dart';
import '../screens/contact/contact.dart';
import '../screens/home/home.dart';
import '../widgets/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored_image.jpg';
  static const String blackWhitePhoto = 'assets/photos/avatar.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.jpg';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://facebook.com/vivektopiyavt",
    "https://instagram.com/vtholic",
    "https://twitter.com/vivektopiyavt",
    "https://linkedin.com/in/vivek-topiya-bb7995155",
    "https://github.com"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1QPC1gtDocMqR0304qOIDV8EbugBLgjOT/view?usp=sharing';

}
class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Contact(),
    Footer(),
  ];
}
