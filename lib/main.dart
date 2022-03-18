import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String playerOne = "rock";

  String playerTwo = "paper";

  String result = "";
  void play() {
    final signs = <String>['rock', 'paper', 'scissors'];
    final playerOneNum = Random().nextInt(3);
    final playerTwoNum = Random().nextInt(3);
    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerTwoNum];
      if (playerOne == 'paper' && playerTwo == 'rock') {
        result = "Player 1 Wins";
      } else if (playerOne == 'scissors' && playerTwo == 'paper') {
        result = "Player 1 Wins";
      } else if (playerOne == 'rock' && playerTwo == 'scissors') {
        result = "Player 1 Wins";
      } else if (playerOne == playerTwo) {
        result = "Tie";
      } else {
        result = "Player 2 Wins";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ROCK PAPER SCISSORS"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/$playerOne.png',
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Player 1")
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    Image.asset(
                      'images/$playerTwo.png',
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Player 2")
                  ],
                ),
              ],
            ),
            Text(result),
            ElevatedButton(
              onPressed: play,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Play"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
