import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';
import '../custom_widgets/channelTile.dart';

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
            Navigator.pop(context);
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
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(), // Set shape to CircleBorder
          backgroundColor: AppColors.primary, // Set your desired background color
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: AppColors.white, // Set your desired icon color
          ),
        ),
        body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true, // Add filled property
              fillColor: AppColors.darkGrey, // Set background color here
              border: OutlineInputBorder(
                borderSide: BorderSide.none, // Remove border color
                borderRadius:
                    BorderRadius.circular(20.0), // Set border radius here
              ),
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          gapH28,
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
          gapH18,
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
          ChannelTile(),
        ],
      ),
    );
  }
}
