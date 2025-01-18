import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String address;
  final String percent;
  final VoidCallback? onTap;
  final BoxDecoration? decoration; // 추가: 외부에서 decoration 지정 가능

  const ListButton({
    super.key,
    required this.address,
    required this.percent,
    this.onTap,
    this.decoration, // 추가
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 380,
          height: 60,
          decoration: decoration ?? // 수정: decoration 사용 여부
              BoxDecoration(
                color: Colors.white, // 기본 배경색
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(8),
              ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  address,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  percent,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
