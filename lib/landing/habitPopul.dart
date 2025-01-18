import 'package:flutter/material.dart';

class HabitpopulPage extends StatefulWidget {
  const HabitpopulPage({super.key});

  @override
  State<HabitpopulPage> createState() => HabitpopulState();
}

enum Level { U5000, U10000, U15000, M15000 }

class HabitpopulState extends State<HabitpopulPage> {
  Level? _selectedLevel = Level.U5000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text('주거 인구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          RadioListTile<Level>(
            title: const Text('5000명 이하'),
            value: Level.U5000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('10000명 이하'),
            value: Level.U10000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('15000명 이하'),
            value: Level.U15000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('15000명 이상'),
            value: Level.M15000,
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
