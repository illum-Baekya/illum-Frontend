import 'package:flutter/material.dart';
import 'package:illum/ui/tag.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({super.key});

  @override
  State<BusinessPage> createState() => BusinessState();
}

class BusinessState extends State<BusinessPage> {
  int businessSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const SizedBox(height: 10),
        Text('업종 선택',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('대분류',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    TagBox(
                        tag: '소매',
                        color: businessSelected == 1
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 1;
                          });
                        }),
                    TagBox(
                        tag: '음식',
                        color: businessSelected == 2
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 2;
                          });
                        }),
                    TagBox(
                        tag: '수리/개인',
                        color: businessSelected == 3
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 3;
                          });
                        }),
                    TagBox(
                        tag: '예체능',
                        color: businessSelected == 4
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 4;
                          });
                        }),
                    TagBox(
                        tag: '교육',
                        color: businessSelected == 5
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 5;
                          });
                        }),
                    TagBox(
                        tag: '부동산',
                        color: businessSelected == 6
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 6;
                          });
                        }),
                    TagBox(
                        tag: '숙박',
                        color: businessSelected == 7
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 7;
                          });
                        }),
                    TagBox(
                        tag: '과학/기술',
                        color: businessSelected == 8
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 8;
                          });
                        }),
                    TagBox(
                        tag: '보건의료',
                        color: businessSelected == 9
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 9;
                          });
                        }),
                    TagBox(
                        tag: '관리/임대',
                        color: businessSelected == 10
                            ? Colors.orange
                            : Colors.white,
                        onTap: () {
                          setState(() {
                            businessSelected = 10;
                          });
                        }),
                  ]),
            ],
          ),
        ),
      ],
    ));
  }
}
