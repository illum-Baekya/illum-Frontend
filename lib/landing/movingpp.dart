import 'package:flutter/material.dart';
import 'package:illum/ui/smallbutton.dart';
import 'package:illum/ui/list.dart';

class MovingppPage extends StatefulWidget {
  const MovingppPage({super.key});

  @override
  State<MovingppPage> createState() => _MovingppPageState();
}

class _MovingppPageState extends State<MovingppPage> {
  int selectedButtonIndex = -1; // 선택된 버튼 인덱스
  int selectedListIndex = -1; // 선택된 리스트 인덱스

  final List<String> buttonTexts = [
    '업종',
    '직장인구',
    '주거인구',
    '유동인구',
    '평균매출',
    '평균소득',
  ];

  final List<Map<String, String>> listItems = [
    {'address': '서울시 강남구', 'percent': '50%'},
    {'address': '서울시 서초구', 'percent': '40%'},
    {'address': '서울시 송파구', 'percent': '30%'},
    {'address': '서울시 마포구', 'percent': '25%'},
    {'address': '서울시 용산구', 'percent': '20%'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 연한 주황색 배경
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.orange[100],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 3,
                  ),
                  itemCount: buttonTexts.length,
                  itemBuilder: (context, index) {
                    return SmallButton(
                      text: buttonTexts[index],
                      buttonColor: selectedButtonIndex == index
                          ? Colors.orange
                          : Colors.white,
                      textColor: selectedButtonIndex == index
                          ? Colors.white
                          : Colors.black,
                      onTap: () {
                        setState(() {
                          selectedButtonIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // 리스트 영역
          Expanded(
            child: ListView.builder(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                // 수정된 ListButton 생성 코드
                return ListButton(
                  address: listItems[index]['address']!,
                  percent: listItems[index]['percent']!,
                  onTap: () {
                    setState(() {
                      selectedListIndex = index;
                    });
                  },
                  decoration: BoxDecoration( // 선택된 항목 배경색 지정
                    color: selectedListIndex == index ? Colors.grey[300] : Colors.white,
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(8),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
