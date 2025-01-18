import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => searchState();
}

class searchState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [Text('검색페이지')],
        ),

      );
  }
}