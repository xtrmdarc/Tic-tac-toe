# Tic-Tac-Toe

This a ruby implementation of the game Tic-Tac-Toe. 

# Rules

This is a two-player game. Each player takes turns placing a token on the board until there's a winner or a draw match.
Each player is going to place their token on the selected cell, and if they manage to get their token three times in a continuous line, they win the match.
Each cell can only be selected once per match, you can't overwrite a previously taken cell.
If the board is full before there's a winner, the match is considered a draw.

# How to play

When you start the game, it's going to ask the names of the players, and immediately after, a match will start. 
You can play as many matches as you want in a single game, and the game is going to keep track of the score.

## Making a move
Each cell in the board is represented by a number, as shown in the figure below. To make a move, you just enter the number of the cell you want to place your token on.

    |1|2|3|
    |4|5|6|
    |7|8|9|

You can't choose a cell that's not displayed in the figure, that will result in the game displaying a warning and asking you for a proper move.

## Ending the game
If you want to stop playing, just enter 'n' when asked if you want to keep playing at the end of the match.

# How to run the game
First of all, you need to have the game files in your computer. You can get them either cloning this repository, or downloading its contents directly
- To clone the repo, go on the project's [Github page](https://github.com/xtrmdarc/Tic-tac-toe), click on "Clone or download", copy the contents of the text box, and then run `git clone "repo"` on the command line, where "repo" is the text you just copied.
- If you want to download it directly instead, go on the project's [Github page](https://github.com/xtrmdarc/Tic-tac-toe), click on "Clone or download", and then on "Download ZIP". After this you need to extract the contents of the zip file on your computer.

Once you have the files on your computer, go on the command line and navigate to the game directory. Once there, there's two ways to run the game

- Run the game directly from the executable file, using the command `./bin/main.rb`
- Pass the main.rb file to the ruby interpreter, using the command `ruby bin/main.rb`

# Live version

[Link to the live version](https://tic-tac-toe.xtrmdarc.repl.run/)

# Requirements

- Ruby > 2.5

## Built With

- Ruby

## Author

👤 **Ivan Diaz**

- Github: [@ivanid22](https://github.com/ivanid22)
- Twitter: [@ivanid22](https://twitter.com/ivanid22)
- Linkedin: [ivanid22](https://www.linkedin.com/in/ivan-diaz-3a38b3150/)

👤 **Diego Antonio Reyes Coronado**

- Github: [@xtrmdarc](https://github.com/xtrmdarc)
- Twitter: [@diegoreyesco](https://twitter.com/DiegoAn91629127)
- Linkedin: [diegoreyesco](https://www.linkedin.com/in/diego-reyes-coronado-7a7189b7/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
