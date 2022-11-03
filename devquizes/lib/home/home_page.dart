import 'package:devquizes/home/widgets/level_button/level_button_widget.dart';
import 'package:devquizes/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:devquizes/home/widgets/appbar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.0),
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    LevelButtonWidget(label: 'Fácil'),
                    LevelButtonWidget(label: 'Médio'),
                    LevelButtonWidget(label: 'Difícil'),
                    LevelButtonWidget(label: 'Perito'),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget()
              ],
            )
          )
        ],
      )
    );
  }
}