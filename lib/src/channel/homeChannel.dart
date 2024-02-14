import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class HomeChannel extends StatefulWidget {
  const HomeChannel({super.key});

  @override
  State<HomeChannel> createState() => _HomeChannelState();
}

class _HomeChannelState extends State<HomeChannel> {
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
          "Channel list",
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
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Channel List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                  letterSpacing: -0.33,
                ),
              )
            ],
          ),
          Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage('assets/icons/channel.png'),
                      width: 150,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Channel Name',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          )
                        ],
                      ),
                      gapH12,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Radio Station: 16',
                            style: TextStyle(
                              
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white,
                                letterSpacing: -0.33),
                          )
                        ],
                      ),
                      gapH12,

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.edit,
                            color: AppColors.white,
                          ),
                          gapW4,
                          Icon(
                            Icons.delete_outline,
                            color: AppColors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
