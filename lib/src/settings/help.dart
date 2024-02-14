import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class HelpSupportSettings extends StatefulWidget {
  const HelpSupportSettings({super.key});

  @override
  State<HelpSupportSettings> createState() => _HelpSupportSettingsState();
}

class _HelpSupportSettingsState extends State<HelpSupportSettings> {
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
          "Help & Support",
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapW8,
                  CircleAvatar(
                    backgroundColor: Color(0xff58ED93),
                    radius: 30,
                    child: Icon(
                      Icons.mail_outline,
                      color: AppColors.white,
                      size: 26,
                    ),
                  ),
                  gapW16,
                  Text(
                    "johndoe@gmail.com",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white),
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  gapW8,
                  CircleAvatar(
                    backgroundColor: Color(0xff58ED93),
                    radius: 30,
                    child: Icon(
                      Icons.call_outlined,
                      color: AppColors.white,
                      size: 26,
                    ),
                  ),
                  gapW16,
                  Text(
                    "+23 4435434533",
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white),
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
