# Rock Paper Scissors 🪨📑✂️

![image1](https://user-images.githubusercontent.com/84308096/158996521-fc00d552-d4a2-42c1-a2d1-fa97b4a51dbf.gif)

## 🍋 Instructions

```
1. Create a new Github repo
2. Create a local repo using the command `git init`
3. Push to the new repo

git remote add origin https://github.com/YourUsername/repoName.git
git branch -M main
git push -u origin main
```

1. Create a new project named: rock_paper_scissors.
2. Set up your application with a `Scaffold` and an `AppBar`.
3. Copy these [images](https://github.com/JoinCODED/Task-Flutter-Rock-Paper-Scissors/tree/main/assets/images) into your project and add them to your `pubspec.yaml`.
4. In your `Scaffold`'s body, create a `Column`.
5. In your `Column` create a 2 widget: a `Row` and an `ElevatedButton`.
6. In your `Row` create 2 `Column`s, each `Column` have an `Image.asset` widget and a `Text` widget.
7. Create 2 variables of type `String`, one for player 1 and the other is for player 2.
8. Render the images based on the value of the variables you created using string interpolation.
9. Create a `play` function and inside create a list that has 3 signs, `rock`,`paper` and `scissors`.
10. Generate 2 random numbers between 0 and 3. each number is for a player.
11. Convert your widget into a stateful widget.
12. Call the `setState` method and assign each player a random element from the list of signs using the index.
13. Assign the `play` function to your `ElevatedButton`.

### 🤼‍♂️ Who's the winner?

Add a `Text` widget before your `ElevatedButton` and show the result in it, use an if else statements.
