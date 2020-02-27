#!/usr/bin/env ruby

class UserInterface
    def self.display_board(board)
      board.each_with_index do |row, j|
        row.each_with_index do |element, i|
          print "#{element}"
          print '|' if i < row.length-1
        end
        print "\n-----\n" if j < board.length-1
      end
      print "\n"
    end
  
    def self.ask_move(player)
      puts "Enter move for player #{player[:id]}"
      return gets.chomp
    end

    def self.repeat_match()
      loop do
        puts 'Play again? (y/n)'
        input = (gets.chomp).downcase
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

  5.times do 
    move = UserInterface.ask_move(current_player)
    # the game decides wether it's a valid move and changes the board accordingly
    UserInterface.display_board(board)
    current_player = current_player == player1 ? player2 : player1
  end

  #assuming player 1 wins
  UserInterface.output_message("Congratulations player 1, you win!")

  keep_playing = UserInterface.repeat_match()
  break unless keep_playing

end