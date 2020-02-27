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
  
end
