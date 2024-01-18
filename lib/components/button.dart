import 'package:app_giao_hang/styles/app_color.dart';
import 'package:app_giao_hang/styles/app_text.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const Button({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title.toUpperCase(),
                style: AppText.largeBold.copyWith(color: AppColors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
