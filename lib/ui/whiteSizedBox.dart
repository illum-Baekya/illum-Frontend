import 'package:flutter/material.dart';

class ManageSizedBox extends SizedBox {
  final Widget? content;
  final double boxHeight;
  ManageSizedBox({super.key, required this.content, required this.boxHeight})
      : super(
          width: double.infinity,
          height: boxHeight,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: content,
          ),
        );
}
