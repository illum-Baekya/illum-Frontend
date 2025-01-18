import 'package:flutter/material.dart';

class VisitpopulPage extends StatefulWidget {
  const VisitpopulPage({super.key});

  @override
  State<VisitpopulPage> createState() => VisitpopulState();
}

enum Level { U50000, U100000, U150000, M150000 }

class VisitpopulState extends State<VisitpopulPage> {
  Level? _selectedLevel = Level.U50000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text('유동 인구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          RadioListTile<Level>(
            title: const Text('3000명 이하'),
            value: Level.U100000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('6000명 이하'),
            value: Level.U150000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('9000명 이하'),
            value: Level.U150000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('9000명 이상'),
            value: Level.M150000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
