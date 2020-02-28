require_relative 'player.rb'

class Board
  attr_reader :cells

  def initialize(ui)
    @cells = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @ui = ui
  end

  private
  def check_win_rows?(player)
    symbol_check = player.character
    @cells.each do |row|
      return true if row.all?(symbol_check)
    end
    false
  end

  def check_win_columns?(player)
    symbol_check = player.character
    i = 0
    while i < @cells.length
      temp = []
      j = 0
      while j < @cells[i].length
        temp.push(@cells[j][i])
        j += 1
      end
      return true if temp.all?(symbol_check)

      i += 1
    end
    false
  end
  
  def check_win_reverse_diagonal?(player)
    rev_diagonal_arr = []
    symbol_check = player.character
    i = 0
    while i < @cells.length
      j = 0
      while j < @cells[i].length
        rev_diagonal_arr.push(@cells[i][j]) if j == @cells[i].length - i - 1
        j += 1
      end
      i += 1
    end
    return true if rev_diagonal_arr.all?(symbol_check)

    false
  end

end