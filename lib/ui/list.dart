//연습 하나마다 버튼을 만들어주는 클래스
import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  final String address;
  final String percent;
  final VoidCallback? onTap;

  const ListButton({
    super.key,
    required this.address, //제목
    required this.percent,
    required this.onTap,
  }); //파일 저장 경로

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            width: 380,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        address,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Text(percent,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            )),
      ),
    );
  }
}
