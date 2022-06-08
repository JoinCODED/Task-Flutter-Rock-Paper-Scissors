# Rock Paper Scissors 🪨📑✂️

![image1](https://user-images.githubusercontent.com/84308096/158996521-fc00d552-d4a2-42c1-a2d1-fa97b4a51dbf.gif)

## 🍋 Instructions

1. Create a new project called rock_paper_scissors.
2. Set up your application with a `Scaffold` and an `AppBar`.
3. Copy these [images](https://github.com/JoinCODED/Task-Flutter-Rock-Paper-Scissors/tree/main/assets/images) into your project and add their path to the `pubspec.yaml`.
4. In your `Scaffold`'s body, create a `Column`.
5. In your `Column`'s children, create two widgets: a `Row` and an `ElevatedButton`.
6. In your `Row`, create two `Column` widgets, and in each `Column`, add an `Image.asset` widget and a `Text` widget.
7. Create two `String` variables, one is for player 1 and the other is for player 2, and assign each one of them to an initial value from the following signs "rock", "paper", and "scissors".
8. Render the images based on the value of the variables you created using string interpolation.
9.  Create a `String` variable to store the result in.
10. Create a `play` function and inside:
    - Create a list that has 3 signs, `rock`,`paper` and `scissors`.
    - Generate two random numbers between 0 and 3. Each number is for a player.
11. Convert your widget into a stateful widget.
12. Call the `setState` method inside the `play` function, and assign each player a random element from the list of signs using the two random numbers as an index.
13. Assign the `play` function to your `ElevatedButton`.

### 🤼‍♂️ Who's the winner?

Add a `Text` widget before your `ElevatedButton` and show the result in it using an `if else` statements.
