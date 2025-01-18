import 'package:flutter/material.dart';

class AverHabitIncomePage extends StatefulWidget {
  const AverHabitIncomePage({super.key});

  @override
  State<AverHabitIncomePage> createState() => AverHabitIncomeState();
}

enum Level { U2000, U3000, U4000, M4000 }

class AverHabitIncomeState extends State<AverHabitIncomePage> {
  Level? _selectedLevel = Level.U3000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text('평균 소득',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          RadioListTile<Level>(
            title: const Text('2000만원 이하'),
            value: Level.U2000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('3000만원 이하'),
            value: Level.U3000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('4000만원 이하'),
            value: Level.U4000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('4000만원 이상'),
            value: Level.M4000,
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
