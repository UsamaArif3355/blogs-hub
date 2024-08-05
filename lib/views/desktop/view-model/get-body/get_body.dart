import 'package:dorilla_games/views/desktop/about/about_us_page.dart';
import 'package:dorilla_games/views/desktop/games/games_page.dart';
import 'package:dorilla_games/views/desktop/home/home_page.dart';
import 'package:flutter/material.dart';

class GetBody {
  const GetBody._();
  static Widget get({required int bodyPageId}) {
    if (bodyPageId == 0) {
      return const AboutUsPage();
    } else if (bodyPageId == 1) {
      return const HomePageBody();
    } else {
      return const GamesPage();
    }
  }
}
