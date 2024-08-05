// import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:dorilla_games/core/components/card/card_smile_title_text.dart';
import 'package:dorilla_games/core/components/card/title_medium_card.dart';
import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/widget/image/clickable_play_store_image.dart';
import 'package:flutter/material.dart';

class GameContentSample extends StatelessWidget {
  const GameContentSample(
      {super.key,
      required this.images,
      required this.appName,
      required this.appDescription,
      required this.url,
      required this.appContent});
  final List<Widget> images;
  final String appName;
  final String appDescription;
  final String url;
  final String appContent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.heigthEighty,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(
              //   height: 300,
              //   width: context.widthFourty,
              //   child: slider.CarouselSlider(
              //     items: images,
              //     options: slider.CarouselOptions(
              //       autoPlay: true,
              //       viewportFraction: 1,
              //       aspectRatio: 1.3,
              //     ),
              //   ),
              // ),
              Column(
                children: [
                  TitleMediumCard(text: appName),
                  SizedBox(
                    width: context.halfWidth,
                    child: CardSmallTitleText(
                      text: appDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ClickablePlayStoreImage(goUrl: url),
                ],
              ),
            ],
          ),
          CardSmallTitleText(
            text: appContent,
            textAlign: TextAlign.center,
            maxLine: 12,
            textOverflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
