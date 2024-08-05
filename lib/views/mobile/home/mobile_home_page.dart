import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/core/extension/padding/project_pads.dart';
import 'package:dorilla_games/product/widget/button/get_started_button.dart';
import 'package:dorilla_games/product/widget/card/welcome_content_card.dart';
import 'package:dorilla_games/product/widget/card/welcome_title_card.dart';
import 'package:dorilla_games/product/widget/image/medium_logo.dart';
import 'package:dorilla_games/views/desktop/about/about_us_page.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    // Generate a list of 50 sample blog entries
    final List<Blog> blogs = List.generate(50, (index) {
      return Blog(
        icon: 'assets/images/store.png', // Adjust the path according to your project structure
        title: 'Blog Title ${index+1}',
        description: 'Description for blog ${index+1}. This is a sample description to demonstrate text overflow handling in the blog item widget.',
        datetime: DateTime.now().subtract(Duration(days: index)),
      );
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Sports Blogs'),

      ),
      body: Padding(
        padding: context.desktopContentPad,
        child: SizedBox(
          width: context.widthToBeUsed,
          child: PaginatedBlogList(blogs: blogs),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: const [
  //       Spacer(flex: 5),
  //       MediumLogo(),
  //       Spacer(flex: 2),
  //       WelcomeTitleCard(),
  //       Spacer(flex: 1),
  //       WelcomeContentCard(),
  //       Spacer(flex: 1),
  //       GetStartedButton(),
  //       Spacer(flex: 3),
  //     ],
  //   );
  // }
}
