import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/views/_products/widgets/card/games_content_card.dart';
import 'package:dorilla_games/views/_products/widgets/card/games_title_card.dart';
import 'package:dorilla_games/views/_products/widgets/image/dynamic_play_store_clickable.dart';
import 'package:flutter/material.dart';

class DesktopGamesContent extends StatelessWidget {
  const DesktopGamesContent(
      {super.key, required this.images, required this.appName, required this.appContent, required this.url});
  final List<Widget> images;
  final String appName;
  final String appContent;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 4),
        SizedBox(
          height: context.carouselSliderHeight,
          width: context.carouselSliderWidth,
          child:slider. CarouselSlider(
            items: images,
            options:slider. CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
            ),
          ),
        ),
        const Spacer(flex: 15),
        SizedBox(
          width: context.halfWidth,
          height: context.desktopBodyHeight,
          child: Padding(
            padding: context.desktopSliderPad,
            child: Column(
              children: [
                const Spacer(flex: 5),
                GamesTitleCard(appName: appName),
                const Spacer(flex: 1),
                GamesContentCard(appContent: appContent),
                const Spacer(flex: 1),
                DynamicClickablePlayStore(url: url),
                const Spacer(flex: 7),
              ],
            ),
          ),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
