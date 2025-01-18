import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class DetailResultPage extends StatelessWidget {
  final String address;
  final List<Map<String, String>> details;
  final double latitude;
  final double longitude;

  const DetailResultPage({
    super.key,
    required this.address,
    required this.details,
    
  });

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
                color: const Color.fromARGB(255, 250, 210, 173),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Center(
                  child: Column(
                    children: [
                      // 상세결과 텍스트
                      const Text(
                        "상세결과",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // 주소 표시
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          address,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // 적합도 텍스트
          const Center(
            child: Text(
              "적합도 95%",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40),
          // 세로 정렬 데이터 표시
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 왼쪽 데이터 (업소 개수 등)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: details
                        .map((detail) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                detail['label']!,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(width: 20),
                  // 오른쪽 데이터 (500개 등)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: details
                        .map((detail) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                detail['value']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          // 지도에서 보기 텍스트
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "지도에서 보기",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          // 지도 표시 영역
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const NaverMap(
              child: Text(
                "지도 표시 공간",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailResultPage extends StatelessWidget {
  final String address;
  final List<Map<String, String>> details;

  const DetailResultPage({
    super.key,
    required this.address,
    required this.details,
  });

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
                color: const Color.fromARGB(255, 250, 210, 173),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Center(
                  child: Column(
                    children: [
                      // 상세결과 텍스트
                      const Text(
                        "상세결과",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // 주소 표시
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          address,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // 적합도 텍스트
          const Center(
            child: Text(
              "적합도 95%",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40),
          // 세로 정렬 데이터 표시
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 왼쪽 데이터 (업소 개수 등)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: details
                        .map((detail) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                detail['label']!,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ))
                        .toList(),
                  ),
                  const SizedBox(width: 20),
                  // 오른쪽 데이터 (500개 등)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: details
                        .map((detail) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                detail['value']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
          // 지도에서 보기 텍스트
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "지도에서 보기",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          // 지도 표시 영역
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "지도 표시 공간",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
