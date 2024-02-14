import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_app/src/settings/allNotificationsSettings.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.background,
        title: const Text(
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
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14, top: 14),
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
                  const CircleAvatar(
                    backgroundColor: AppColors.primary,
                    radius: 28,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.white,
                      size: 26,
                    ),
                  ),
                  gapW16,
                  const Text(
                    "Notifications",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white),
                  ),
                  const Spacer(),
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      focusColor: Color(0xff58ED93),
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ),
                  gapW8,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14, top: 14),
            child: Material(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contxet) => AllNotifications(),
                    ),
                  );
                },
                child: Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                    //  color: AppColors.darkGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      gapW8,
                      CircleAvatar(
                        backgroundColor: AppColors.primary,
                        radius: 28,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: AppColors.white,
                          size: 26,
                        ),
                      ),
                      gapW16,
                      Text(
                        "All Notifications",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: -0.33,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 10,
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 13,
                          ),
                        ),
                        backgroundColor: Color(0xffF55353),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                      ),
                      gapW8,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
