#!/usr/bin/env ruby

class UserInterface
  def self.display_board(board)
    board.each_with_index do |row, j|
      row.each_with_index do |element, i|
        print element.to_s
        print '|' if i < row.length - 1
      end
      print "\n-----\n" if j < board.length - 1
    end
    print "\n"
  end

  def self.ask_move(player)
    puts "Enter move for player #{player[:id]}"
    gets.chomp
  end

  def self.ask_player_name(player)
    puts "Enter name for player #{player[:id]}"
    gets.chomp
  end

  def self.repeat_match()
    loop do
      puts 'Play again? (y/n)'
      input = gets.chomp.downcase
      return true if input == 'y'
      return false if input == 'n'
    end
  end

  def self.output_message(message)
    puts message
  end
end

player1 = {
  id: 1,
  sign: 'O'
}

player2 = {
  id: 2,
  sign: 'X'
}

board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
players = [player1, player2]

current_player = player1
puts UserInterface.display_board(board)
game_on = true

# The game asks for players names
player1[:name] = UserInterface.ask_player_name(players[0])
player2[:name] = UserInterface.ask_player_name(players[1])

# Since there is no game logic implemented, we are making the game break after nine iterations
showcase_turns = 9

# The game will remain active until game_on variable falls to false.
while game_on
  # Game tells which player turn it is
  UserInterface.ask_move(current_player)
  # Game decides wether it's a valid move and changes the board accordingly
  # Game inform player if selected move is valid
  UserInterface.display_board(board)

  # Game checks for a draw or a winning move
  # If it detects a winning move, then the game_on variable turns false and it will end the match
  # If not the current player switches.
  current_player = current_player == player1 ? player2 : player1

  showcase_turns -= 1
  game_on = false if showcase_turns.zero?
  break unless game_on
end

# If player wins
UserInterface.output_message("Congratulations #{current_player[:name]}, you win!")
# If game detected a draw
# Game informs player if selected move is a draw move
# UserInterface.output_message('You draw')
