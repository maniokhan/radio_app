
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class ChannelTile extends StatelessWidget {
  const ChannelTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Container(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Row(
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
                    ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
