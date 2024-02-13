import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(16),
        children: [
          Padding(
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
                    backgroundColor: AppColors.primary,
                    radius: 30,
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.white,
                      size: 26,
                    ),
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
                  CupertinoSwitch(
                    focusColor: Color(0xff58ED93),
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                  gapW8,
                ],
              ),
            ),
          ),
          Padding(
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
                    backgroundColor: AppColors.primary,
                    radius: 30,
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
                    child: Text("1",style: TextStyle(color: AppColors.white),),
                    backgroundColor: Color(0xffF55353),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  gapW8,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
