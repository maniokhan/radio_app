import 'package:flutter/material.dart';
import 'package:radio_app/src/constants/app_colors.dart';

class CommonTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  bool obscureText;
  final bool enablePasswordTextField;
  CommonTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.enablePasswordTextField = false,
  });

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: AppColors.grey,
            letterSpacing: -0.33,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          suffixIcon: widget.enablePasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  icon: Icon(widget.obscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined),
                )
              : null,
        ),
        style: const TextStyle(
          color: Colors.white,
          letterSpacing: -0.33,
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
