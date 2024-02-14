import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';

class CommonSettingTile extends StatelessWidget {
  final String title;
  final Color? avatarColor;
  final Icon icon;
  final Function()? onTap;

  const CommonSettingTile({
    super.key,
    required this.title,
    required this.avatarColor,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14, top: 14),
      child: Material(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                gapW8,
                CircleAvatar(
                  backgroundColor: avatarColor,
                  radius: 28,
                  child: icon,
                ),
                gapW16,
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      letterSpacing: -0.33,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                gapW8,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
