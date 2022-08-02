import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isCircle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Achievement View'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Toast"),
          onPressed: () {
            isCircle = true;
            show(context);
          },
        ),
      ),
    );
  }

  void show(BuildContext context) {
    AchievementView(
      context,
      alignment: Alignment.bottomCenter,
      color: Colors.grey,
      title: "Yeaaah!",
      subTitle: "Training completed  ",
      textStyleSubTitle: const TextStyle(
        fontSize: 12.0,
      ),
      isCircle: isCircle,
    ).show();
  }
}
