1. Create a new project named: rock_paper_scissors.
2. Set up your application with a `Scaffold` and an `AppBar`.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock Paper Scissors',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ROCK PAPER SCISSORS"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: Colors.orange.shade50,
      ),
    );
  }
}
```

3. Copy these [images](https://github.com/JoinCODED/Task-Flutter-Rock-Paper-Scissors/tree/main/assets/images) into your project and add them to your `pubspec.yaml`.

```yaml
assets:
  - assets/
```

4. In your `Scaffold`'s body, create a `Column`.

```dart
body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [],
        ),
```

5. In your `Column` create a 2 widget: a `Row` and an `ElevatedButton`.

```dart
children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Play"),
              ),
            )
          ],
```

6. In your `Row` create 2 `Column`s, each `Column` have an `Image.asset` widget and a `Text` widget.

```dart
Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/rock.png',
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
                      'images/rock.png',
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
```

7. Create 2 variables of type `String`, one for player 1 and the other is for player 2.

```dart
  String playerOne = "rock";
  String playerTwo = "paper";
```

8. Render the images based on the value of the variables you created using string interpolation.

```dart
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
```

9.  Create a `play` function and inside create a list that has 3 signs, `rock`,`paper` and `scissors`.

```dart
void play() {
    final signs = <String>['rock', 'paper', 'scissors'];
  }
```

10. Generate 2 random numbers between 0 and 3. each number is for a player.

```dart
  void play() {
    final signs = <String>['rock', 'paper', 'scissors'];
    final playerOneNum = Random().nextInt(3);
    final playerTwoNum = Random().nextInt(3);
  }
```

11. Convert your widget into a stateful widget.

```dart
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
  }

  @override
  Widget build(BuildContext context) {
      [...]
  }
}
```

12. Call the `setState` method and assign each player a random element from the list of signs using the index.

```dart
void play() {
    final signs = <String>['rock', 'paper', 'scissors'];
    final playerOneNum = Random().nextInt(3);
    final playerTwoNum = Random().nextInt(3);
    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerTwoNum];
    });
  }
```

13. Assign the `play` function to your `ElevatedButton`.

```dart
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
```

### 🍋 Who's the winner?

Add a `Text` widget before your `ElevatedButton`:

```dart
    Text(result),
```

Create a variable to hold the result:

```dart
  String result = "";
```

In your `setState` method, check for the winner:

```dart
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
```
