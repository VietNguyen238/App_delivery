import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/pages/onboarding/widgets/intro_page.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = new PageController();
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: introPageItem.length,
        itemBuilder: (context, index) {
          final item = introPageItem[index];
          return IntroPage(
            indexPage: index + 1,
            image: item.image,
            controller: _controller,
          );
        },
      ),
    );
  }
}

class IntroPageItem {
  String image;
  IntroPageItem({required this.image});
}

List<IntroPageItem> introPageItem = [
  IntroPageItem(image: AppIcons.im_deliver1),
  IntroPageItem(image: AppIcons.im_deliver2),
  IntroPageItem(image: AppIcons.im_deliver3),
];
