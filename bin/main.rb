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

current_player = player1
puts UserInterface.display_board(board)

loop do
  # We are only doing 5 moves for demo purposes.
  5.times do
    # Game tells which player turn it is
    UserInterface.ask_move(current_player)
    # Game decides wether it's a valid move and changes the board accordingly
    # Game inform player if selected move is valid
    UserInterface.display_board(board)
    current_player = current_player == player1 ? player2 : player1
  end

  # Assuming player 1 wins
  # Game inform player if selected move is a winning move
  UserInterface.output_message('Congratulations player 1, you win!')
  # Assuming player make a draw move
  # Game informs player if selected move is a draw move
  UserInterface.output_message('You draw')

  keep_playing = UserInterface.repeat_match
  break unless keep_playing
end
