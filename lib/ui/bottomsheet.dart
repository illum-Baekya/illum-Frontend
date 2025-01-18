import 'package:flutter/material.dart';
import 'package:illum/landing/averBossIncome.dart';
import 'package:illum/landing/averHabitIncome.dart';
import 'package:illum/landing/business.dart';
import 'package:illum/landing/habitPopul.dart';
import 'package:illum/landing/prodectPopul.dart';
import 'package:illum/landing/visitPopul.dart';
import 'package:illum/ui/bottomBox.dart';
import 'package:illum/ui/customedButton.dart';

class Bottomsheet {
  int businessSelected = 0;
  void selectBottomSheet(int type, BuildContext context) {
    double boxHeight = 0;
    Widget innerContent = Container(); // Default value to avoid null
    switch (type) {
      case 1: //업종
        boxHeight = 0.8;
        innerContent = BusinessPage();
        break;
      case 2: //직장 인구
        boxHeight = 0.5;
        innerContent = ProdectpopulPage();
        break;
      case 3: //주거 인구
        boxHeight = 0.5;
        innerContent = HabitpopulPage();
        break;
      case 4: // 유동 인구
        boxHeight = 0.5;
        innerContent = VisitpopulPage();
        break;
      case 5: //평균 매출
        boxHeight = 0.5;
        innerContent = AverBossIncomePage();
        break;
      case 6: //평균 소득
        boxHeight = 0.5;
        innerContent = AverHabitIncomePage();
        break;
    }
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return BottomBox(
          content: DefaultBottomLayout(
            innerContent: innerContent,
            boxHeight: MediaQuery.of(context).size.height * boxHeight,
          ),
          boxHeight: MediaQuery.of(context).size.height * boxHeight,
        );
      },
    );
  }
}

class DefaultBottomLayout extends Container {
  final Widget? innerContent;
  final double boxHeight;
  DefaultBottomLayout(
      {super.key, required this.innerContent, required this.boxHeight})
      : super(
            width: double.infinity,
            height: boxHeight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                      image: AssetImage('assets/images/swipeIndicator.png')),
                  Expanded(
                    child: innerContent!,
                  ),
                  CustomedButton(
                      text: '설정',
                      buttonColor: Colors.orange,
                      textColor: Colors.white,
                      onTap: null)
                ],
              ),
            ));
}
