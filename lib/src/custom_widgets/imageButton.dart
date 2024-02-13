import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';

class ImageButton extends StatelessWidget {
  String image;
  Function()? onTap;
  ImageButton({
    super.key,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.15,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: Color(0xff2F2F2F),
          color: AppColors.darkGrey,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          height: size.height * 0.03,
          // color: kBrown,
        ),
      ),
    );
  }
}
