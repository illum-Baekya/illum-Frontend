import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onTap; // Add onTap callback

  const SmallButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    this.onTap, // Make onTap required
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Assign the onTap callback
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor,
          border: Border.all(color: const Color.fromARGB(255, 202, 202, 202)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
