import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:illum/landing/detail.dart';
import 'package:illum/landing/movingpp.dart';
import 'package:illum/map/map.dart';
import 'package:illum/ui/customedButton.dart';
import 'package:illum/ui/list.dart';
import 'package:illum/ui/smallbutton.dart';
import 'package:illum/ui/whiteSizedBox.dart';
import 'package:illum/ui/bottomsheet.dart' as bottom;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(clientId: 'nk4n29xi82');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 215, 154),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListButton(
              address: '서울특별시 동작구 노량진동',
              percent: '98%',
              onTap: null,
            ),
            SmallButton(
                text: '유동인구',
                buttonColor: Colors.white,
                textColor: Colors.orange),
            SizedBox(height: 10),
            CustomedButton(
                text: '지도',
                buttonColor: Colors.orange,
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage()));
                }),
            CustomedButton(
                text: 'bottomsheet',
                buttonColor: Colors.orange,
                textColor: Colors.white,
                onTap: () {
                  final bottomSheet = bottom.Bottomsheet();
                  bottomSheet.selectBottomSheet(6, context);
                }),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage()));
                },
                child: Text("Go to Map")),
            ManageSizedBox(content: null, boxHeight: 500)
          ],
        ),
      ),
    );
  }
}
