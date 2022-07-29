# Rock Paper Scissors 🪨📑✂️

![image1](https://user-images.githubusercontent.com/84308096/158996521-fc00d552-d4a2-42c1-a2d1-fa97b4a51dbf.gif)

## Setup

1. Create a new Github repo
2. Create a local repo using the command `git init`
3. Push to the new repo

```shell
git remote add origin https://github.com/YourUsername/repoName.git
```

```shell
git branch -M main
```

```shell
git push -u origin main
```

## 🍋 Instructions

1. Create a new project named: rock_paper_scissors.
2. Set up your application with a `Scaffold` and an `AppBar`.
3. Copy these [images](https://github.com/JoinCODED/Task-Flutter-Rock-Paper-Scissors/tree/main/assets/images) into your project and add them to your `pubspec.yaml`.
4. In your `Scaffold`'s body, create a widget tree that looks like the screenshot.
5. Create 2 variables, one for player 1 and the other is for player 2.
6. Render the images based on the value of the variables you created using string interpolation.
7. Create a `play` function and inside create a list that has 3 signs, `rock`,`paper` and `scissors`.
8. Generate 2 random numbers between 0 and 3. each number is for a player.
9. Convert your widget into a stateful widget.
10. Call the `setState` method and assign each player a random element from the list of signs using the index.
11. Assign the `play` function to your `ElevatedButton`.

Here's the widgets you will need:

[Row](https://api.flutter.dev/flutter/widgets/Row-class.html).

[Column](https://api.flutter.dev/flutter/widgets/Column-class.html).

[Image.asset](https://api.flutter.dev/flutter/widgets/Image-class.html#asset-named-String-width-double-height-double).

[Text](https://api.flutter.dev/flutter/widgets/Text-class.html).

[ElevatedButton](https://api.flutter.dev/flutter/widgets/ElevatedButton-class.html).

[AppBar](https://api.flutter.dev/flutter/widgets/AppBar-class.html).

[Scaffold](https://api.flutter.dev/flutter/widgets/Scaffold-class.html).

### 🤼‍♂️ Who's the winner?

Add a `Text` widget before your `ElevatedButton` and show the result in it, use an if else statements.

## Push to Github

```shell
git add .
```

```shell
git commit -m "your message"
```

```shell
git push
```
