require './lib/board'
require './lib/player'
require './bin/main'

describe Board do

  let(:my_player) do
    Player.new(1, 'X')
  end

  let(:my_ui) do
    UserInterface.new
  end

  let(:my_board) do
    Board.new(my_ui)
  end

  describe '#board_completed' do
    it "should return true when there's a win state on the board - top row" do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 2)
      my_board.apply_move?(my_player.character, 3)
      expect(
          my_board.board_completed(my_player)
      ).to eql(1)
    end

    it "should return true when there's a win state on the board - main diagonal" do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 5)
      my_board.apply_move?(my_player.character, 9)
      expect(
          my_board.board_completed(my_player)
      ).to eql(1)
    end

    it "should return 1 when there's a win state on the board - first column" do
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 4)
      my_board.apply_move?(my_player.character, 7)
      expect(
          my_board.board_completed(my_player)
      ).to eql(1)
    end

    it "should return 2 if there's a drawn match" do
      # Each line represents a move
      my_board.apply_move?(my_player.character, 1)
      my_board.apply_move?(my_player.character, 2)
      my_board.apply_move?('O', 3)
      my_board.apply_move?('O', 4)
      my_board.apply_move?('O', 5)
      my_board.apply_move?(my_player.character, 6)
      my_board.apply_move?(my_player.character, 7)
      my_board.apply_move?(my_player.character, 8)
      my_board.apply_move?('O', 9)
      expect(
        my_board.board_completed(my_player)
      ).to eql(2)
    end
  end


end