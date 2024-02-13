import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';

class CommonSettingTile extends StatelessWidget {
  const CommonSettingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            radius: 30,
          ),
          gapW16,
          Text(
            "Notifications",
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
    );
  }
}
