import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MobileBottomNavigationBar extends StatelessWidget {
  const MobileBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.watch<PageCubit>();
    return Align(
      alignment: Alignment.bottomCenter,
      child: BottomNavigationBar(
        currentIndex: appCubit.state,
        selectedItemColor: context.cocoaBean,
        backgroundColor: context.pampas,
        onTap: (value) {
          appCubit.updateActiveButton(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ProjectKeys.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games_outlined),
            label: ProjectKeys.games,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_outlined),
            label: ProjectKeys.blogs,
          ),
        ],
      ),
    );
  }
}
