import 'package:flutter/material.dart';

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
            // Navigator.pop(context);
          },
          icon:const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.background,
        title:const Text(
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
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding:const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text \ncommonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text \ncommonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:const Column(
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the...',
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
        
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: AppColors.darkGrey,
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
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Lorem ipsum is a placeholder text commonly used to demonstrate the...',
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
