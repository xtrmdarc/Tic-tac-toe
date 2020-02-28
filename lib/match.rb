require_relative 'player.rb'
require_relative 'board.rb'

class Match

  def initialize(players,ui)
    @players = players
    @current_player  = players[0]
    @board = Board.new(ui)
    @ui = ui
  end

  private
  def get_move
    loop do
      move = @ui.ask_move(@current_player).to_i
      break if @board.apply_move?(@current_player.character, move)
      @ui.output_message('Invalid move, please try again')
    end
  end

  public
  def start
    match_finished = false
    @board.display
    until match_finished do
      get_move
      @board.display
      case @board.board_completed(@current_player)
        when 1
          @ui.output_message("Congratulations player #{@current_player.id}, you won!")
          match_finished = true
          @current_player.score += 1
        when 2
          @ui.output_message("Match draw!")
          match_finished = true
        when 0
          @current_player = @current_player == @players[0] ? @players[1] : @players[0]
      end
    end
  end
end