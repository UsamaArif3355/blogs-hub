import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/about_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/games_text_button.dart';
import 'package:dorilla_games/views/_products/widgets/text-button/home_text_button.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flutter/material.dart';

class AppBarNavBar extends StatelessWidget {
  const AppBarNavBar({
    super.key,
    required this.appCubit,
  });

  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.appCardHeight,
      width: context.appBarWidth,
      child: Card(
        color: context.pampas,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(flex: 3),
            AboutUsButton(appCubit: appCubit),
            const Spacer(flex: 1),
            HomeButton(appCubit: appCubit),
            const Spacer(flex: 1),
            GamesButton(appCubit: appCubit),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
