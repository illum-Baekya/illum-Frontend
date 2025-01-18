import 'package:flutter/material.dart';

class ManageSizedBox extends SizedBox {
  final Widget? content;
  final double boxHeight;
  ManageSizedBox({super.key, required this.content, required this.boxHeight})
      : super(
          width: 380,
          height: boxHeight,
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 204, 204, 204).withOpacity(0.4),
                  spreadRadius: 20,
                  blurRadius: 20,
                  offset: Offset(0, 3), // 그림자의 위치 조정
                ),
              ],
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: content,
          ),
        );
}
