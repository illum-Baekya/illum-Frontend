import 'package:flutter/material.dart';

class TagBox extends StatelessWidget {
  final String tag;
  final VoidCallback? onTap;
  final Color color;

  const TagBox(
      {super.key, required this.color, required this.tag, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Assign the onTap callback
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
              child: Text(
                tag,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
