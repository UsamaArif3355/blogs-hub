import 'package:dorilla_games/core/components/text/custom_text_button.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flutter/material.dart';

class GamesButton extends StatelessWidget {
  const GamesButton({super.key, required this.appCubit});
  final PageCubit appCubit;

  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
      appCubit: appCubit,
      text: ProjectKeys.games,
      buttonId: 2,
    );
  }
}
