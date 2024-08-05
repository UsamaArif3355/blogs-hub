import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/views/_products/widgets/button/get_started_button.dart';
import 'package:dorilla_games/views/_products/widgets/card/desktop_welcome_content_card.dart';
import 'package:dorilla_games/views/_products/widgets/card/welcome_title_card.dart';
import 'package:flutter/material.dart';

class DesktopWelcomeContent extends StatelessWidget {
  const DesktopWelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.halfWidth,
      height: context.desktopBodyHeight,
      child:
      Column(
        children: const [
          Spacer(flex: 6),
          DesktopWelcomeTitleCard(),
          Spacer(flex: 1),
          DesktopWelcomeContentCard(),
          Spacer(flex: 1),
          GetStartedButton(),
          Spacer(flex: 6),
        ],
      ),
    );
  }
}
