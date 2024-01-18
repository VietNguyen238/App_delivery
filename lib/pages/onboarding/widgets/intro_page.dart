import 'package:app_giao_hang/components/button.dart';
import 'package:app_giao_hang/configs/app_icon.dart';
import 'package:app_giao_hang/configs/app_route.dart';
import 'package:app_giao_hang/pages/onboarding/index.dart';
import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  final String image;
  final int indexPage;
  final controller;
  const IntroPage(
      {super.key,
      required this.image,
      required this.indexPage,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -205,
            right: -MediaQuery.sizeOf(context).width * 0.1,
            child: Container(
              height: 543,
              width: 543,
              decoration: BoxDecoration(
                  color: AppColors.orange.withOpacity(0.2),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: -130,
            right: -MediaQuery.sizeOf(context).width * 0.5,
            child: Container(
              height: 392,
              width: 392,
              decoration: BoxDecoration(
                  color: const Color(0xFFF69008).withOpacity(0.5),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            child: Center(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const Spacer(
                          flex: 3,
                        ),
                        Image.asset(
                          image,
                          height: 305,
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                              style: AppText.large
                                  .copyWith(color: AppColors.black),
                              textAlign: TextAlign.center),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Button(
        title: 'Next',
        onTap: () {
          if (introPageItem.length == indexPage) {
            Navigator.of(context).pushNamed(AppRoutes.spl);
          }
          if (controller.hasClients) {
            controller.jumpToPage(indexPage);
          }
        },
      ),
    );
  }
}
