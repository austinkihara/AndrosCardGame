class Player
  attr_accessor :dealer, :cards, :name

  def initialize name
    @name = name
    @score = 0
    @cards = []
  end

  def score
    if @cards
      @score = @cards.sum(&:value)
    else
      puts 'no cards'
    end
  end
end