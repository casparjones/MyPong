# MyPong

A classic Pong game built in ActionScript 3, featuring human and AI-controlled paddles. The game logic is implemented in a modular fashion using controllers, models, and views.

This project includes a precompiled `MyPong.swf` file that can be played directly in the browser using the [Ruffle](https://ruffle.rs) Flash emulator.

## 🕹️ Play It Online

You can play this game directly in your browser via GitHub Pages:

👉 [**Play MyPong**](https://<your-github-username>.github.io/MyPong/)

> Replace `<your-github-username>` with your actual GitHub username.

## 🔧 How to Run the Game with Ruffle

Since modern browsers no longer support the Adobe Flash Player, this project uses [Ruffle](https://ruffle.rs), a Flash Player emulator written in Rust.

To enable playback of the `.swf` file on GitHub Pages:

1. [Download the latest `ruffle_web_selfhosted` bundle](https://github.com/ruffle-rs/ruffle/releases) (choose `ruffle_web_selfhosted` zip).
2. Extract the contents and copy the following files into your repository's root directory:
    - `ruffle.js`
    - `ruffle.wasm`
3. Create an `index.html` file in your root directory with the following contents:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MyPong</title>
    <script src="ruffle.js"></script>
</head>
<body>
    <h1>MyPong</h1>
    <p>A simple Pong game made with AS3</p>
    <div id="game">
        <embed src="MyPong.swf" width="550" height="400">
    </div>
</body>
</html>
```

4. Commit and push your changes to GitHub.
5. In your repository settings, enable GitHub Pages:
    - Go to `Settings` > `Pages`
    - Choose the root of the main branch (`/ (root)`)
    - Save and wait a few moments

Now your game should be playable via your GitHub Pages URL!

## 📁 Project Structure

```
MyPong/
├── MyPong.swf              # Compiled SWF file
├── src/                    # Source code in ActionScript 3
│   ├── MyPong.as           # Main entry point
│   ├── Controlers/         # Startup and game control logic
│   ├── Models/             # Game configuration and player logic (AI/Human)
│   └── Views/              # Ball, field, and paddles
├── .as3_classpath          # AS3 classpath configuration
├── .project                # Project metadata for FDT
└── README.md               # You're reading it!
```

## 👨‍💻 Author

Created by **Frank Vlatten**

---

Happy retro gaming! 🕹️
