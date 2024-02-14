import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class WishListSettings extends StatefulWidget {
  const WishListSettings({super.key});

  @override
  State<WishListSettings> createState() => _WishListSettingsState();
}

class _WishListSettingsState extends State<WishListSettings> {
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
          "Wishlist",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
          ),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(2.0),
                    height: 120.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      color: AppColors.darkGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/heart icon.png'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                    AssetImage('assets/icons/radio_icon.png'))
                          ],
                        ),
                        gapH4
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Radio',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight:FontWeight.w400,
                          color: AppColors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            
            ],
          ),
       
        ],
      ),
    );
  }
}
