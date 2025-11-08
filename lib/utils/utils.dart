import 'package:flutter/material.dart';
import 'package:personal_web/sections/about/about.dart';
import 'package:personal_web/sections/contact/contact.dart';
import 'package:personal_web/sections/home/home.dart';
import 'package:personal_web/sections/portfolio/portfolio.dart';
import 'package:personal_web/sections/services/services.dart';
import 'package:personal_web/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/black-white.png';

  // work
  static const String android = 'assets/work/android.png';
  static const String university = 'assets/work/university.png';
  static const String flutter = 'assets/work/flutter.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';
  static const String wwwBlack = 'assets/services/www.png';
  static const String wwwWhite = 'assets/services/www_white.png';

  static const List<String> socialIconURL = [
    //"https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    //"https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    //"https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    //"https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
  ];

  static const List<String> socialLinks = [
    //"https://facebook.com/nsangani.param",
    //"https://instagram.com/nishitsangani0079",
    //"https://twitter.com/na.sangani",
    "https://linkedin.com/in/nishit-sangani-72069182",
    "https://github.com/Nishit79",
    //"https://nishit.medium.com"
  ];

  static const String resume =
      'https://drive.google.com/file/d/1Zwxeo3B_G7nzzaJmYnRZAXF9L1HJp3lu/view?usp=sharing';


  static const String gitHub = 'https://github.com/Nishit79';
  static const String portfolioLink = 'https://docs.google.com/presentation/d/18k2uPEhJBnQaRbWL14esDUvC8TIymmCcXJQl_-MVLsk/edit?usp=share_link';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
