import 'package:flutter/material.dart';

class DetailBusinessPage extends StatefulWidget {
  final int selectedBusiness;
  const DetailBusinessPage({super.key, required this.selectedBusiness});

  @override
  State<DetailBusinessPage> createState() => DetailBusinessState();
}

enum retails {
  USED,
  OTHER,
  PET,
  PLANT,
  ORNAMENT,
  VALUABLES,
}

class DetailBusinessState extends State<DetailBusinessPage> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
