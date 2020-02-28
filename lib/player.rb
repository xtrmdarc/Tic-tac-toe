class Player
  attr_reader :id, :character
  attr_accessor :score

  def initialize(id, character)
    @id = id
    @score = 0
    @character = character
  end
end