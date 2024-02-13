import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radio_app/src/constants/app_colors.dart';
import 'package:radio_app/src/constants/app_sizes.dart';

class CommonDropdown extends StatefulWidget {
  final List<String> items;
  final String? value;
  final String hintText;
  final ValueChanged<String?> onChanged;

  const CommonDropdown({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.hintText,
    this.value,
  }) : super(key: key);

  @override
  _CommonDropdownState createState() => _CommonDropdownState();
}

class _CommonDropdownState extends State<CommonDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.value,
          onChanged: widget.onChanged,
          items: [
            DropdownMenuItem<String>(
              value: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child: Text(
                  widget.hintText,
                  style: GoogleFonts.poppins(
                    color: AppColors.grey,
                    letterSpacing: -0.33,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            ...widget.items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  child: Text(
                    value,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      letterSpacing: -0.33,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            }),
          ],
          dropdownColor: Colors.black,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
          ),
          icon: Row(
            children: [
              Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.grey.shade600,
              ),
              gapW4,
            ],
          ),
          iconSize: 40,
          elevation: 16,
        ),
      ),
    );
  }
}
