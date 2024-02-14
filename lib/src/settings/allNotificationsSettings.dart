import 'package:flutter/material.dart';
import 'package:radio_app/src/settings/detail_notification.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AllNotifications extends StatefulWidget {
  const AllNotifications({super.key});

  @override
  State<AllNotifications> createState() => _AllNotificationsState();
}

class _AllNotificationsState extends State<AllNotifications> {
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
        title: Text(
          "All Notifications",
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
        children: const [
          CommonNotificationTile(),
          CommonNotificationTile(),
          CommonNotificationTile(),
          CommonNotificationTile(),
          CommonNotificationTile(),
          CommonNotificationTile(),
        ],
      ),
    );
  }
}

class CommonNotificationTile extends StatelessWidget {
  const CommonNotificationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Material(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailNotification()));
          },
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              //  color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                gapW4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Notification Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                        letterSpacing: -0.33,
                      ),
                    ),
                    Text(
                      '8/13/2023',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff9A9A9A),
                        letterSpacing: -0.33,
                      ),
                    ),
                  ],
                ),
                gapH4,
                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the box ',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff9A9A9A),
                            letterSpacing: -0.33,
                            fontWeight: FontWeight.w400),
                      )),
                    ],
                  ),
                ),
                gapW4,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
