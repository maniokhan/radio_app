import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';

class CommonSettingTile extends StatelessWidget {
  final String title;
  final Color? avatarColor;
  final Icon icon;

  const CommonSettingTile({
    super.key, required this.title, required this.avatarColor, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          color: AppColors.darkGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            gapW8,
            CircleAvatar(
              backgroundColor: avatarColor,
              radius: 30,
              child: icon,
            ),
            gapW16,
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  letterSpacing: -0.33,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
            ),
            gapW8,
          ],
        ),
      ),
    );
  }
}
