import 'package:flutter/material.dart';
import 'package:radio_app/src/settings/notifications.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import '../custom_widgets/common_setting_tile.dart';

class HomeSettingsPage extends StatefulWidget {
  const HomeSettingsPage({super.key});

  @override
  State<HomeSettingsPage> createState() => _HomeSettingsPageState();
}

class _HomeSettingsPageState extends State<HomeSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.background,
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
            letterSpacing: -0.33,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        //  padding: EdgeInsets.all(16),
        children: [
          CommonSettingTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notifications()));
            },
            icon: const Icon(
              Icons.notifications_outlined,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Notifications',
            avatarColor: Color(0xffFF0075),
          ),
          const CommonSettingTile(
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Channels',
            avatarColor: Color(0xffFC840D),
          ),
          const CommonSettingTile(
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Schedule',
            avatarColor: Color(0xff1A5B80),
          ),
          const CommonSettingTile(
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Wishlist',
            avatarColor: Color(0xff7B61FF),
          ),
          const CommonSettingTile(
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Help & Support',
            avatarColor: Color(0xff58ED93),
          ),
          const CommonSettingTile(
            icon: Icon(
              Icons.person,
              color: AppColors.white,
              size: 26,
            ),
            title: 'Profile',
            avatarColor: Color(0xff58ED93),
          ),
          gapH12,
          Container(
            height: 58,
            color: Color(0xff7B61FF),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subscription',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '120 hours left',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          gapH16,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              child: Material(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(5.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  onTap: () {},
                  child: Container(
                    width: 190,
                    height: 55,
                    decoration: BoxDecoration(
                      //color: AppColors.primary,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    alignment: Alignment.center,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: AppColors.white,
                        ),
                        gapW8,
                        const Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          gapH24,
        ],
      ),
    );
  }
}
