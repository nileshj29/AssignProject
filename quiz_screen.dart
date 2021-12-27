import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  static const maxSeconds = 5;
  int seconds = maxSeconds;
  Timer? timer;
  late AnimationController _animatedController;
  late Animation<double> _animation;

  var color = Colors.blue;
  var height = 100.0;
  var width = 100.0;

  @override
  void initState() {
    super.initState();
    if (this.mounted) {
      setState(() {
        startTimer();
      });
    }

    _animatedController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
    _animation =
        CurvedAnimation(parent: _animatedController, curve: Curves.bounceOut);
    _animatedController.forward();
  }

  @override
  dispose() {
    _animatedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8c28f1),
      body: ScaleTransition(
        scale: _animation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 90,
            ),
            Expanded(
              child: Text(
                "My Quiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: Text(
                "Which is the Fastest Animal on the world",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w700),
              ),
            ),
            buildTimer(),
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.yellow,
                              child: Text(
                                "A",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Turtle",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        onPressed: () {
                          print('xx');
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.lightBlue,
                              child: Text(
                                "B",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Cheetah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        onPressed: () {
                          print('xx');
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                              child: Text(
                                "C",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Rabbit",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        onPressed: () {
                          print('xx');
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: MaterialButton(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.orangeAccent,
                              child: Text(
                                "D",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Leopard",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        onPressed: () {
                          print('xx');
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTimer() => SizedBox(
        width: 100,
        height: 100,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1 - seconds / maxSeconds,
              valueColor: AlwaysStoppedAnimation(Colors.purple),
              strokeWidth: 5,
              backgroundColor: Colors.white,
            ),
            Center(child: buildTime())
          ],
        ),
      );

  Widget buildTime() {
    return Text(
      '$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 40,
      ),
    );
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        if (this.mounted) {
          setState(() {
            seconds--;
          });
        }
      } else {
        stopTimer();
      }
    });
  }

  void stopTimer() {
    timer?.cancel();
  }
}
