import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class NotificationsName extends StatefulWidget {
  const NotificationsName({super.key});

  @override
  State<NotificationsName> createState() => _NotificationsNameState();
}

class _NotificationsNameState extends State<NotificationsName> {
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
          "Notifications Name",
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
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapW4,
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Lorem Ipsum is simply dummy text of the\n printing and typesetting industry. Lorem\n Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an\n  unknown printer took a galley of type and\n  scrambled it to make a type specimen book.\n  It has survived not only five centuries, but\n  also the leap into electronic typesetting,\n  remaining essentially unchanged.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff9A9A9A),
                            letterSpacing: -0.33,
                            fontWeight: FontWeight.w400),
                      )),
                    ],
                  ),
                  gapW4,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
