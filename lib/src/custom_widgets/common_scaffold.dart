import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;
  const CommonScaffold({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/logos/background_dj_box_logo.png",
              ),
            ),
            Container(
                height: double.infinity, width: double.infinity, child: body),
          ],
        ),
      ),
    );
  }
}
