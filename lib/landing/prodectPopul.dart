import 'package:flutter/material.dart';

class ProdectpopulPage extends StatefulWidget {
  const ProdectpopulPage({super.key});

  @override
  State<ProdectpopulPage> createState() => ProdectpopulState();
}

enum Level { U3000, U6000, U9000, M9000 }

class ProdectpopulState extends State<ProdectpopulPage> {
  Level? _selectedLevel = Level.U3000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text('직장 인구',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          RadioListTile<Level>(
            title: const Text('3000명 이하'),
            value: Level.U3000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('6000명 이하'),
            value: Level.U6000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('9000명 이하'),
            value: Level.U9000,
            groupValue: _selectedLevel,
            onChanged: (Level? value) {
              setState(() {
                _selectedLevel = value;
              });
            },
          ),
          RadioListTile<Level>(
            title: const Text('9000명 이상'),
            value: Level.M9000,
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
