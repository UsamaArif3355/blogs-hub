import 'package:dorilla_games/core/components/card/card_title_large_text.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:flutter/material.dart';

class AboutUsCard extends StatelessWidget {
  const AboutUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CardTitleLargeText(text: ProjectKeys.blogs);
  }
}
