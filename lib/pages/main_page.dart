import 'package:app_giao_hang/components/button.dart';
import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/configs/app_route.dart';
import 'package:app_giao_hang/styles/app_styles.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppStyles.paddingPage,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              AppIcons.im_logo,
              height: 69,
            )),
          ],
        ),
      ),
      bottomNavigationBar: Button(
          title: 'GET STARTED',
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.onboarding);
          }),
    );
  }
}
